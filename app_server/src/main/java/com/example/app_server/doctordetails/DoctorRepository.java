package com.example.app_server.doctordetails;

import com.example.app_server.doctordetails.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DoctorRepository extends JpaRepository<Doctor, Long> {
    Doctor findByDoctorId(String doctorId);
}

