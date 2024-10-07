package com.example.app_server.doctordetails;


import com.example.app_server.hospitaldetails.Hospital;
import jakarta.persistence.*;

import java.util.List;

@Entity
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(unique = true, nullable = false)
    private String doctorId;
    private String name;
    private String specialty;
    private String phoneNumber;

    private String password;

    private String doc_emailid;

    @ManyToOne
    @JoinColumn(name = "hospital_id")
    private Hospital hospital;

    @OneToMany(mappedBy = "doctor", cascade = CascadeType.ALL)
    private List<DocLoginSession> docloginSessions;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Hospital getHospital() {
        return hospital;
    }

    public void setHospital(Hospital hospital) {
        this.hospital = hospital;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<DocLoginSession> getDocloginSessions() {
        return docloginSessions;
    }

    public void setDocloginSessions(List<DocLoginSession> docloginSessions) {
        this.docloginSessions = docloginSessions;
    }

    public String getDoc_emailid() {
        return doc_emailid;
    }

    public void setDoc_emailid(String doc_emailid) {
        this.doc_emailid = doc_emailid;
    }
}

