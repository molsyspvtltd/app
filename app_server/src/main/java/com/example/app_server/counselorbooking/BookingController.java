package com.example.app_server.counselorbooking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@RestController
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @PostMapping("/book")
    public String bookCounselor(@RequestParam Long userId,
                                @RequestParam Long counselorId,
                                @RequestParam String meetingType,
                                @RequestParam LocalDateTime dateTime,
                                @RequestParam(required = false) String place) {
        return bookingService.bookCounselor(userId, counselorId, meetingType, dateTime, place);
    }

    @DeleteMapping("/cancel")
    public String cancelBooking(@RequestParam Long bookingId, @RequestParam Long userId) {
        return bookingService.cancelBooking(bookingId, userId);
    }
}
