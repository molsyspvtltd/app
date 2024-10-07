package com.example.app_server.Appoinment;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping("/api/appointments")
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @PostMapping("/book")
    public ResponseEntity<Appointment> bookAppointment(@RequestBody AppointmentRequest request) {
        LocalDateTime appointmentTime = LocalDateTime.parse(request.getAppointmentTime());
        Appointment appointment = appointmentService.bookAppointment(request.getUserId(), request.getProductId(), appointmentTime);
        if (appointment != null) {
            return ResponseEntity.ok(appointment);
        } else {
            return ResponseEntity.status(400).body(null);
        }
    }

    @GetMapping("/available-slots")
    public ResponseEntity<List<LocalDateTime>> getAvailableSlots(@RequestParam String date) {
        LocalDate localDate = LocalDate.parse(date);
        List<LocalDateTime> availableSlots = appointmentService.getAvailableSlots(localDate);
        return ResponseEntity.ok(availableSlots);
    }

    @DeleteMapping("/{appointmentId}")
    public ResponseEntity<String> cancelAppointment(@PathVariable Long appointmentId) {
        if (appointmentService.cancelAppointment(appointmentId)) {
            return ResponseEntity.ok("Appointment canceled successfully.");
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PutMapping("/{appointmentId}")
    public ResponseEntity<Appointment> rescheduleAppointment(@PathVariable Long appointmentId, @RequestBody AppointmentRequest request) {
        LocalDateTime newAppointmentTime = LocalDateTime.parse(request.getAppointmentTime());
        Appointment appointment = appointmentService.rescheduleAppointment(appointmentId, newAppointmentTime);
        if (appointment != null) {
            return ResponseEntity.ok(appointment);
        } else {
            return ResponseEntity.badRequest().body(null);
        }
    }


}
