package com.example.app_server.phalbotomist.booktester;

import com.example.app_server.EmailService;
import com.example.app_server.SMSService;
import com.example.app_server.UserAccountCreation.User;
import com.example.app_server.UserAccountCreation.UserRepository;
import com.example.app_server.counselorbooking.Booking;
import com.example.app_server.counselorbooking.BookingRepository;
import com.example.app_server.phalbotomist.registartion.PhlebotomistRegistration;
import com.example.app_server.phalbotomist.registartion.PhlebotomistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class TestBookingService {

    @Autowired
    private TestBookingRepository testBookingRepository;

    @Autowired
    private BookingRepository bookingRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PhlebotomistService phlebotomistService;

    @Autowired
    private EmailService emailService;

    @Autowired
    private SMSService smsService;

    public String bookTest(Long userId, LocalDateTime dateTime) {
        // Check if user has booked a counselor
        List<Booking> userBookings = bookingRepository.findByUserId(userId);
        if (userBookings.isEmpty()) {
            return "You must book a counselor before booking a test.";
        }

        // Check slot availability (3 slots per day)
        LocalDateTime startOfDay = dateTime.toLocalDate().atStartOfDay();
        LocalDateTime endOfDay = dateTime.toLocalDate().atTime(23, 59, 59);
        List<TestBooking> testBookings = testBookingRepository.findByDateTimeBetween(startOfDay, endOfDay);
        if (testBookings.size() >= 3) {
            return "No available slots for the selected date and time.";
        }

        // Retrieve user and assign a phlebotomist
        User user = userRepository.findById(userId).orElse(null);
        if (user == null) {
            return "User not found.";
        }
        PhlebotomistRegistration phlebotomist = phlebotomistService.getAvailablePhlebotomist();
        if (phlebotomist == null) {
            return "No available phlebotomists.";
        }

        // Create and save the test booking
        TestBooking testBooking = new TestBooking();
        testBooking.setUser(user);
        testBooking.setDateTime(dateTime);
        testBooking.setPhlebotomist(phlebotomist);
        testBookingRepository.save(testBooking);

        // Send notifications
        String emailSubject = "Test Booking Confirmation";
        String emailBody = String.format("Dear %s,\n\nYour test has been booked for %s.\n\nPhlebotomist: %s %s\nLocation: %s",
                user.getFullName(), dateTime, phlebotomist.getFirstName(), phlebotomist.getLastName(), phlebotomist.getLocation());
        emailService.sendEmail(user.getEmail(), emailSubject, emailBody);
        emailService.sendEmail(phlebotomist.getEmail(), emailSubject, emailBody);

        String smsMessage = String.format("Test booked for %s with phlebotomist %s %s at %s.",
                dateTime, phlebotomist.getFirstName(), phlebotomist.getLastName(), phlebotomist.getLocation());
        smsService.sendSMS(user.getPhoneNumber(), smsMessage);
        smsService.sendSMS(phlebotomist.getPhoneNo(), smsMessage);

        return "Test booked successfully.";
    }
}
