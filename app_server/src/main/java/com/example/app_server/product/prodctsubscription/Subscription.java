package com.example.app_server.product.prodctsubscription;


import com.example.app_server.UserAccountCreation.User;
import com.example.app_server.product.prodctInDatabase.Product;
import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
public class Subscription {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;

    @OneToOne
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    private Product product;

    private LocalDateTime subscriptionDate;

    private boolean paymentConfirmed;

    // Constructors, Getters, and Setters


    public Subscription() {
    }

    public Subscription(Long id, User user, Product product, LocalDateTime subscriptionDate, boolean paymentConfirmed) {
        this.id = id;
        this.user = user;
        this.product = product;
        this.subscriptionDate = subscriptionDate;
        this.paymentConfirmed = paymentConfirmed;
    }

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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public LocalDateTime getSubscriptionDate() {
        return subscriptionDate;
    }

    public void setSubscriptionDate(LocalDateTime subscriptionDate) {
        this.subscriptionDate = subscriptionDate;
    }

    public boolean isPaymentConfirmed() {
        return paymentConfirmed;
    }

    public void setPaymentConfirmed(boolean paymentConfirmed) {
        this.paymentConfirmed = paymentConfirmed;
    }
}
