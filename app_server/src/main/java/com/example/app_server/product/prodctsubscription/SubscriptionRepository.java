package com.example.app_server.product.prodctsubscription;
import com.example.app_server.UserAccountCreation.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface SubscriptionRepository extends JpaRepository<Subscription, Long> {

    List<Subscription> findByUser(User user);

    Subscription findByUserId(Long userId);

    boolean existsByUserIdAndProductIdAndPaymentConfirmedTrue(Long userId, Long productId);
}
