package com.example.app_server.Counselor;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CounselorRepository extends JpaRepository<Counselor, Long> {
    Counselor findByCounselorId(String counselorId);
}

