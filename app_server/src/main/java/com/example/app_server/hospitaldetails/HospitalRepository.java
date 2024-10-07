package com.example.app_server.hospitaldetails;

import com.example.app_server.hospitaldetails.Hospital;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HospitalRepository extends JpaRepository<Hospital, Long> {
}

