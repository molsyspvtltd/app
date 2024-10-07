package com.example.app_server.phalbotomist.booktester;


import com.example.app_server.UserAccountCreation.User;
import com.example.app_server.phalbotomist.registartion.PhlebotomistRegistration;
import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
public class TestBooking {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "phlebotomist_id")
    private PhlebotomistRegistration phlebotomist;

    private LocalDateTime dateTime;

    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public PhlebotomistRegistration getPhlebotomist() {
        return phlebotomist;
    }

    public void setPhlebotomist(PhlebotomistRegistration phlebotomist) {
        this.phlebotomist = phlebotomist;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }
}
