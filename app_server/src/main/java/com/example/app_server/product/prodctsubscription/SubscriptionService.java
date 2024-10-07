package com.example.app_server.product.prodctsubscription;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubscriptionService {

    @Autowired
    private SubscriptionRepository subscriptionRepository;

    public Subscription addSubscription(Subscription subscription) {
        return subscriptionRepository.save(subscription);
    }

    public boolean confirmPayment(Long subscriptionId) {
        Subscription subscription = subscriptionRepository.findById(subscriptionId).orElse(null);
        if (subscription != null) {
            subscription.setPaymentConfirmed(true);
            subscriptionRepository.save(subscription);
            return true;
        }
        return false;
    }
    // You can add more service methods as needed
}
