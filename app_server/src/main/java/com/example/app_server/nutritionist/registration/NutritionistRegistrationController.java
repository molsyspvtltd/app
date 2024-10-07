package com.example.app_server.nutritionist.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;

@Controller
@RequestMapping("/api")
public class NutritionistRegistrationController {

    @Autowired
    private NutritionistRepository repository;

    @PostMapping("/nutriregister")
    public String submitRegistrationForm(@RequestBody NutritionistRegistration member) throws ParseException {
        repository.save(member);
        return "registration-success"; // Redirect to a success page
    }
}
