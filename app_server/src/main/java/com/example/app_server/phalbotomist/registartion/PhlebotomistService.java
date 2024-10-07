package com.example.app_server.phalbotomist.registartion;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PhlebotomistService {

    @Autowired
    private PhlebotomistRepository phlebotomistRepository;

    public PhlebotomistRegistration getPhlebotomistById(Long id) {
        Optional<PhlebotomistRegistration> phlebotomist = phlebotomistRepository.findById(id);
        return phlebotomist.orElse(null);
    }

    public PhlebotomistRegistration getAvailablePhlebotomist() {
        // Example logic to get an available phlebotomist (you can customize this as needed)
        // For simplicity, this just returns the first phlebotomist found
        return phlebotomistRepository.findAll().stream().findFirst().orElse(null);
    }

    public void savePhlebotomist(PhlebotomistRegistration phlebotomist) {
        phlebotomistRepository.save(phlebotomist);
    }

    // Add more methods if needed for managing phlebotomists
}

