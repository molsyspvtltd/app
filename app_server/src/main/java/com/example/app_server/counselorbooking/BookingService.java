package com.example.app_server.counselorbooking;

import com.example.app_server.Counselor.Counselor;
import com.example.app_server.Counselor.CounselorRepository;
import com.example.app_server.EmailService;
import com.example.app_server.SMSService;
import com.example.app_server.UserAccountCreation.User;
import com.example.app_server.UserAccountCreation.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private CounselorRepository counselorRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private SMSService smsService;

    public String bookCounselor(Long userId, Long counselorId, String meetingType, LocalDateTime dateTime, String place) {
        // Check availability
        LocalDateTime startOfDay = dateTime.toLocalDate().atStartOfDay();
        LocalDateTime endOfDay = dateTime.toLocalDate().atTime(23, 59, 59);

        Counselor counselor = counselorRepository.findById(counselorId).orElse(null);
        if (counselor == null) {
            return "Counselor not found";
        }

        List<Booking> bookings = bookingRepository.findByCounselorAndDateTimeBetween(counselor, startOfDay, endOfDay);

        // Check slot availability (3 slots per day)
        if (bookings.size() >= 3) {
            return "No available slots for the selected date and time";
        }

        // Retrieve user details
        User user = userRepository.findById(userId).orElse(null);
        if (user == null) {
            return "User not found";
        }

        // Create booking
        Booking booking = new Booking();
        booking.setUser(user);
        booking.setCounselor(counselor);
        booking.setMeetingType(meetingType);
        booking.setDateTime(dateTime);
        booking.setPlace(meetingType.equals("offline") ? place : null);
        booking.setGoogleMeetLink(meetingType.equals("online") ? "N/A" : null); // Placeholder

        // Save booking
        bookingRepository.save(booking);

        // Prepare and send notifications
        if ("online".equals(meetingType)) {
            // Online meeting
            emailService.sendEmail(user.getEmail(), "Booking Confirmation",
                    "Your booking is confirmed for " + dateTime + ". Meeting type: Online. Google Meet link: N/A");
            smsService.sendSMS(user.getPhoneNumber(),
                    "Your booking is confirmed for " + dateTime + ". Meeting type: Online. Google Meet link: N/A");

            emailService.sendEmail(counselor.getEmail(), "New Online Booking",
                    "You have a new online booking on " + dateTime + ". User details: " + user.getFullName() + ", " + user.getPhoneNumber() + ". Meeting link: N/A");
        } else {
            // Offline meeting
            emailService.sendEmail(user.getEmail(), "Booking Confirmation",
                    "Your booking is confirmed for " + dateTime + ". Meeting type: Offline. Location: " + place);
            smsService.sendSMS(user.getPhoneNumber(),
                    "Your booking is confirmed for " + dateTime + ". Meeting type: Offline. Location: " + place);

            emailService.sendEmail(counselor.getEmail(), "New Offline Booking",
                    "You have a new offline booking on " + dateTime + ". User details: " + user.getFullName() + ", " + user.getPhoneNumber() + ". Location: " + place);
        }

        return "Booking successful";
    }

    public String cancelBooking(Long bookingId, Long userId) {
        Booking booking = bookingRepository.findByIdAndUserId(bookingId, userId);
        if (booking == null) {
            return "Booking not found or you do not have permission to cancel this booking";
        }

        bookingRepository.delete(booking);

        // Notify user and counselor
        emailService.sendEmail(booking.getUser().getEmail(), "Booking Cancellation",
                "Your booking scheduled for " + booking.getDateTime() + " has been cancelled.");
        smsService.sendSMS(booking.getUser().getPhoneNumber(),
                "Your booking scheduled for " + booking.getDateTime() + " has been cancelled.");

        emailService.sendEmail(booking.getCounselor().getEmail(), "Booking Cancellation",
                "A booking scheduled for " + booking.getDateTime() + " has been cancelled by " + booking.getUser().getFullName() + ".");

        return "Booking cancelled successfully";
    }
}
