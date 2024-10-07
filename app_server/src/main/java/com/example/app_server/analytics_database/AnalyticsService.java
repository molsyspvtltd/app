package com.example.app_server.analytics_database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AnalyticsService {
    @Autowired
    private AnalyticsRepository analyticsRepository;

    public Analytics trackAnalytics(Analytics analytics) {
        return analyticsRepository.save(analytics);
    }
}


