package com.example.app_server.phalbotomist.registartion;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;

@Controller
@RequestMapping("/api")
public class PhlebotomistRegistrationController {

    @Autowired
    private PhlebotomistRepository repository;

    @PostMapping("/phlebo/register")
    public String submitRegistrationForm(@RequestBody PhlebotomistRegistration member) throws ParseException {
        repository.save(member);
        return "registration-success"; // Redirect to a success page
    }
}
