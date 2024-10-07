package com.example.app_server.notification_messaging;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificationService {
    @Autowired
    private NotificationRepository notificationRepository;

    public Notification sendNotification(Notification notification) {
        return notificationRepository.save(notification);
    }
}

