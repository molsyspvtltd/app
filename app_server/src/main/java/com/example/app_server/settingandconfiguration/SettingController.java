package com.example.app_server.settingandconfiguration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SettingController {
    @Autowired
    private SettingService settingService;

    @PostMapping("/settings")
    public Setting saveSetting(@RequestBody Setting setting) {
        return settingService.saveSetting(setting);
    }
}

