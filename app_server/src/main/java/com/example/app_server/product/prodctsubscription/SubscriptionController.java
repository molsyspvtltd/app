package com.example.app_server.product.prodctsubscription;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/subscriptions")
public class SubscriptionController {

    @Autowired
    private SubscriptionService subscriptionService;

    @PostMapping("/add")
    public ResponseEntity<Subscription> addSubscription(@RequestBody Subscription subscription) {
        Subscription addedSubscription = subscriptionService.addSubscription(subscription);
        return ResponseEntity.ok(addedSubscription);
    }
    @PatchMapping("/confirm-payment/{subscriptionId}")
    public ResponseEntity<String> confirmPayment(@PathVariable Long subscriptionId) {
        boolean paymentConfirmed = subscriptionService.confirmPayment(subscriptionId);
        if (paymentConfirmed) {
            return ResponseEntity.ok("Payment confirmed and access granted.");
        } else {
            return ResponseEntity.badRequest().body("Failed to confirm payment.");
        }
    }

    // You can add more endpoints for subscription management as needed
}
