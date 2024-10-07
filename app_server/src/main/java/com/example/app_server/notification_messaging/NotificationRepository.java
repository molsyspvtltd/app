package com.example.app_server.notification_messaging;

import org.springframework.data.jpa.repository.JpaRepository;

public interface NotificationRepository extends JpaRepository<Notification, Long> {
    // You can add custom query methods here if needed
}

