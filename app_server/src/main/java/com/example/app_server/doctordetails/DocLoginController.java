package com.example.app_server.doctordetails;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/doctor/login")
public class DocLoginController {

    @Autowired
    private DocLoginService docloginService;

    @PostMapping
    public ResponseEntity<String> login(@RequestBody DocLoginRequest docloginRequest) {
        boolean isAuthenticated = docloginService.authenticateDoctor(docloginRequest);
        if (isAuthenticated) {
            return ResponseEntity.ok("Login successful");
        } else {
            return ResponseEntity.status(401).body("Invalid doctorId or password");
        }
    }
}
