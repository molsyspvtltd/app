package com.example.app_server.payementandbilling;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
    // You can add custom query methods here if needed
}

