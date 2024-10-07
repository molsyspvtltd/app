package com.example.app_server.analytics_database;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AnalyticsRepository extends JpaRepository<Analytics, Long> {
    // You can add custom query methods here if needed
}

