package com.example.app_server.sales.registration;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SalesRepository  extends JpaRepository<SalesRegistration, Long> {
}
