package com.example.app_server.analytics_database;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnalyticsController {
    @Autowired
    private AnalyticsService analyticsService;

    @PostMapping("/analytics")
    public Analytics trackAnalytics(@RequestBody Analytics analytics) {
        return analyticsService.trackAnalytics(analytics);
    }
}

