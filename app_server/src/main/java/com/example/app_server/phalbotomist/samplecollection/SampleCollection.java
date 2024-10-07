package com.example.app_server.phalbotomist.samplecollection;


import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sample_collection")
public class SampleCollection {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "sample_id", unique = true)
    private String sampleId;

    @Column(name = "patient_id")
    private String patientId;

    @Column(name = "phlebotomist_id")
    private String phlebotomistId;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "collection_date_time")
    private Date collectionDateTime;

    @Column(name = "sample_type")
    private String sampleType;

    @Column(name = "sample_location")
    private String sampleLocation;

    @Column(name = "sample_status")
    private String sampleStatus;

    @Column(name = "additional_notes")
    private String additionalNotes;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSampleId() {
        return sampleId;
    }

    public void setSampleId(String sampleId) {
        this.sampleId = sampleId;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public String getPhlebotomistId() {
        return phlebotomistId;
    }

    public void setPhlebotomistId(String phlebotomistId) {
        this.phlebotomistId = phlebotomistId;
    }

    public Date getCollectionDateTime() {
        return collectionDateTime;
    }

    public void setCollectionDateTime(Date collectionDateTime) {
        this.collectionDateTime = collectionDateTime;
    }

    public String getSampleType() {
        return sampleType;
    }

    public void setSampleType(String sampleType) {
        this.sampleType = sampleType;
    }

    public String getSampleLocation() {
        return sampleLocation;
    }

    public void setSampleLocation(String sampleLocation) {
        this.sampleLocation = sampleLocation;
    }

    public String getSampleStatus() {
        return sampleStatus;
    }

    public void setSampleStatus(String sampleStatus) {
        this.sampleStatus = sampleStatus;
    }

    public String getAdditionalNotes() {
        return additionalNotes;
    }

    public void setAdditionalNotes(String additionalNotes) {
        this.additionalNotes = additionalNotes;
    }
}
