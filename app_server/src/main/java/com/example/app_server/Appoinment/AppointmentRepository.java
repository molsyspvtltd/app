package com.example.app_server.Appoinment;

import com.example.app_server.doctordetails.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Long> {

    @Query("SELECT a FROM Appointment a WHERE a.appointmentTime BETWEEN :start AND :end")
    List<Appointment> findAppointmentsBetween(LocalDateTime start, LocalDateTime end);

    List<Appointment> findByDoctor(Doctor doctor);
}
