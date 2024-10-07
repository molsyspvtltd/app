package com.example.app_server.phalbotomist.booktester;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@RestController
@RequestMapping("/api/test")
public class TestBookingController {

    @Autowired
    private TestBookingService testBookingService;

    @PostMapping("/book")
    public String bookTest(@RequestParam Long userId, @RequestParam LocalDateTime dateTime) {
        return testBookingService.bookTest(userId, dateTime);
    }
}
