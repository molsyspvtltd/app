package com.example.app_server.phalbotomist.booktester;

import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;
import java.util.List;

public interface TestBookingRepository extends JpaRepository<TestBooking, Long> {
    List<TestBooking> findByDateTimeBetween(LocalDateTime start, LocalDateTime end);
    List<TestBooking> findByUserId(Long userId);
}
