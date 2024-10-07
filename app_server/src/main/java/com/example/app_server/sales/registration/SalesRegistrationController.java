package com.example.app_server.sales.registration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;

@Controller
@RequestMapping("/api")
public class SalesRegistrationController {

    @Autowired
    private SalesRepository repository;

    @PostMapping("/salesregister")
    public String submitRegistrationForm(@RequestBody SalesRegistration member) throws ParseException {
        repository.save(member);
        return "registration-success"; // Redirect to a success page
    }
}
