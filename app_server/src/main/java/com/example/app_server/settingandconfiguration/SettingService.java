package com.example.app_server.settingandconfiguration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SettingService {
    @Autowired
    private SettingRepository settingRepository;

    public Setting saveSetting(Setting setting) {
        return settingRepository.save(setting);
    }
}

