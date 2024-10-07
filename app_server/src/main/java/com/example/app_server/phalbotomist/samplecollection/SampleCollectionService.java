package com.example.app_server.phalbotomist.samplecollection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SampleCollectionService {

    @Autowired
    private SampleCollectionRepository sampleCollectionRepository;

    public void collectSample(SampleCollection sampleCollection) {
        // Save the sample collection details to the database
        sampleCollectionRepository.save(sampleCollection);
    }
}
