package com.example.app_server.settingandconfiguration;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SettingRepository extends JpaRepository<Setting, Long> {
    // You can add custom query methods here if needed
}

