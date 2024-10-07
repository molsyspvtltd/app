package com.example.app_server.location;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LocationController {
    @Autowired
    private LocationService locationService;

    @PostMapping("/locations")
    public Location saveLocation(@RequestBody Location location) {
        return locationService.saveLocation(location);
    }
}
