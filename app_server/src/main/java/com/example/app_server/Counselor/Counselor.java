package com.example.app_server.Counselor;


import jakarta.persistence.*;

@Entity
public class Counselor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String counselorName;

    @Column(unique = true)
    private String counselorId; // Example: DNACOUN001

    private String email;
    private String phoneNumber;
    private String place;

    // Default constructor
    public Counselor() {
    }

    // Parameterized constructor
    public Counselor(String counselorName, String counselorId, String email, String phoneNumber, String place) {
        this.counselorName = counselorName;
        this.counselorId = counselorId;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.place = place;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCounselorName() {
        return counselorName;
    }

    public void setCounselorName(String counselorName) {
        this.counselorName = counselorName;
    }

    public String getCounselorId() {
        return counselorId;
    }

    public void setCounselorId(String counselorId) {
        this.counselorId = counselorId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }
}
