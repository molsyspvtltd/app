package com.example.app_server.laboratory.registration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.ParseException;

@Controller
@RequestMapping("/api")
public class LabRegistrationController {

    @Autowired
    private LaboratoryTeamMemberRepository repository;

    @PostMapping("/labteamregister")
    public String submitRegistrationForm(@RequestBody labTeamRegistration member) throws ParseException {
        repository.save(member);
        return "registration-success"; // Redirect to a success page
    }
}
