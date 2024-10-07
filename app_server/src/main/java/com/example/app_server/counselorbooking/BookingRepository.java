package com.example.app_server.counselorbooking;

import com.example.app_server.Counselor.Counselor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Long> {
    List<Booking> findByCounselorAndDateTimeBetween(Counselor counselor, LocalDateTime start, LocalDateTime end);
    Booking findByIdAndUserId(Long userId, Long id);

    List<Booking> findByUserId(Long userId);
}
