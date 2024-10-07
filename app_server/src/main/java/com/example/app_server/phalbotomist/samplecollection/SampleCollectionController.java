package com.example.app_server.phalbotomist.samplecollection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api")
public class SampleCollectionController {

    @Autowired
    private SampleCollectionRepository sampleCollectionRepository;

    @PostMapping("/samplecollection")
    public @ResponseBody String collectSample(@RequestBody SampleCollection sampleCollection) {
        // Add sample collection logic
        // You can perform validation and other operations here

        // Save the sample collection details to the database
        sampleCollectionRepository.save(sampleCollection);

        return "Sample collection details saved successfully!";
    }
}

