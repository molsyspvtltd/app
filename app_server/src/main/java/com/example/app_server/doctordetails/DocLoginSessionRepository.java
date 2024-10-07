package com.example.app_server.doctordetails;

import com.example.app_server.doctordetails.Doctor;
import com.example.app_server.doctordetails.DocLoginSession;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DocLoginSessionRepository extends JpaRepository<DocLoginSession, Long> {
    DocLoginSession findActiveSessionByDoctor(Doctor doctor);
}
