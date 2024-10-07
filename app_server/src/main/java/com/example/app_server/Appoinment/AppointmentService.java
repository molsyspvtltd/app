package com.example.app_server.Appoinment;

import com.example.app_server.EmailService;
import com.example.app_server.SMSService;
import com.example.app_server.UserAccountCreation.User;
import com.example.app_server.UserAccountCreation.UserRepository;
import com.example.app_server.product.prodctInDatabase.Product;
import com.example.app_server.product.prodctInDatabase.ProductRepository;
import com.example.app_server.product.prodctsubscription.SubscriptionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private SubscriptionRepository subscriptionRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ProductRepository productRepository;


    @Autowired
    private EmailService emailService;

    @Autowired
    private SMSService smsService;


    public boolean canBookAppointment(Long userId, Long productId) {
        return subscriptionRepository.existsByUserIdAndProductIdAndPaymentConfirmedTrue(userId, productId);
    }

    public List<LocalDateTime> getAvailableSlots(LocalDate date) {
        List<LocalDateTime> availableSlots = new ArrayList<>();
        LocalTime startTime = LocalTime.of(9, 0);
        LocalTime endTime = LocalTime.of(16, 0);

        for (LocalTime time = startTime; time.isBefore(endTime); time = time.plusMinutes(29)) {
            LocalDateTime dateTime = LocalDateTime.of(date, time);
            LocalDateTime endOfSlot = dateTime.plusMinutes(29);
            List<Appointment> overlappingAppointments = appointmentRepository.findAppointmentsBetween(dateTime, endOfSlot);
            if (overlappingAppointments.isEmpty()) {
                availableSlots.add(dateTime);
            }
        }
        return availableSlots;
    }

    public Appointment bookAppointment(Long userId, Long productId, LocalDateTime appointmentTime) {
        // Check if the user is eligible to book the appointment
        if (canBookAppointment(userId, productId)) {
            // Calculate the end time of the appointment slot
            LocalDateTime endOfSlot = appointmentTime.plusMinutes(30);

            // Check for overlapping appointments within the slot
            List<Appointment> overlappingAppointments = appointmentRepository.findAppointmentsBetween(appointmentTime, endOfSlot);

            // If no overlapping appointments found, proceed with booking
            if (overlappingAppointments.isEmpty()) {
                // Retrieve user and product details
                User user = userRepository.findById(userId).orElseThrow(() -> new IllegalArgumentException("User not found"));
                Product product = productRepository.findById(productId).orElseThrow(() -> new IllegalArgumentException("Product not found"));

                // Create and save the appointment
                Appointment appointment = new Appointment(user, product, appointmentTime);
                appointment = appointmentRepository.save(appointment);

                // Format date and time according to desired format
                DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("hh:mma");
                String formattedDate = appointmentTime.format(dateFormatter);
                String formattedTime = appointmentTime.format(timeFormatter);

                // Send email confirmation
                String userEmail = user.getEmail();
                String emailSubject = "Appointment Confirmation";
                String emailBody = "Your appointment is confirmed for " + formattedDate + " at " + formattedTime;
                emailService.sendEmail(userEmail, emailSubject, emailBody);

                // Send SMS confirmation
                String userPhoneNumber = user.getPhoneNumber();
                String smsMessage = "Your appointment is confirmed for " + formattedDate + " at " + formattedTime;
                smsService.sendSMS(userPhoneNumber, smsMessage);

                return appointment;
            }
        }
        // Return null if appointment booking fails
        return null;
    }




    public Appointment rescheduleAppointment(Long appointmentId, LocalDateTime newAppointmentTime) {
        Optional<Appointment> optionalAppointment = appointmentRepository.findById(appointmentId);
        if (optionalAppointment.isPresent()) {
            Appointment appointment = optionalAppointment.get();
            LocalDateTime endOfSlot = newAppointmentTime.plusMinutes(30);
            List<Appointment> overlappingAppointments = appointmentRepository.findAppointmentsBetween(newAppointmentTime, endOfSlot);
            if (overlappingAppointments.isEmpty()) {
                appointment.setAppointmentTime(newAppointmentTime);
                appointment = appointmentRepository.save(appointment);

                // Format date and time according to desired format
                DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
                DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("hh:mma");
                String formattedDate = newAppointmentTime.format(dateFormatter);
                String formattedTime = newAppointmentTime.format(timeFormatter);

                // Send email confirmation
                User user = appointment.getUser();
                String userEmail = user.getEmail();
                String emailSubject = "Appointment Rescheduled";
                String emailBody = "Your appointment has been rescheduled to " + formattedDate + " at " + formattedTime;
                emailService.sendEmail(userEmail, emailSubject, emailBody);

                // Send SMS confirmation
                String userPhoneNumber = user.getPhoneNumber();
                String smsMessage = "Your appointment has been rescheduled to " + formattedDate + " at " + formattedTime;
                smsService.sendSMS(userPhoneNumber, smsMessage);

                return appointment;
            }
        }
        return null;
    }

    public boolean cancelAppointment(Long appointmentId) {
        Optional<Appointment> optionalAppointment = appointmentRepository.findById(appointmentId);
        if (optionalAppointment.isPresent()) {
            Appointment appointment = optionalAppointment.get();
            User user = appointment.getUser();

            // Format date and time according to desired format
            LocalDateTime appointmentTime = appointment.getAppointmentTime();
            DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("hh:mma");
            String formattedDate = appointmentTime.format(dateFormatter);
            String formattedTime = appointmentTime.format(timeFormatter);

            // Send email confirmation
            String userEmail = user.getEmail();
            String emailSubject = "Appointment Canceled";
            String emailBody = "Your appointment scheduled for " + formattedDate + " at " + formattedTime + " has been canceled.";
            emailService.sendEmail(userEmail, emailSubject, emailBody);

            // Send SMS confirmation
            String userPhoneNumber = user.getPhoneNumber();
            String smsMessage = "Your appointment scheduled for " + formattedDate + " at " + formattedTime + " has been canceled.";
            smsService.sendSMS(userPhoneNumber, smsMessage);

            appointmentRepository.delete(appointment);
            return true;
        }
        return false;
    }
}
