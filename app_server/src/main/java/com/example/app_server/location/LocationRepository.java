package com.example.app_server.location;

import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository extends JpaRepository<Location, Long> {
    // You can add custom query methods here if needed
}
