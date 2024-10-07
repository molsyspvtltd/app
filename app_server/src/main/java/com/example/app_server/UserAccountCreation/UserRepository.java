package com.example.app_server.UserAccountCreation;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByPhoneNumber(String phoneNumber);
    User findByPhoneNumberAndVerificationCode(String phoneNumber, String verificationCode);

    @Query("SELECT u FROM User u WHERE u.phoneNumber LIKE %:phoneNumber%")
    User findBySimilarPhoneNumber(String phoneNumber);
}
