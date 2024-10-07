package com.example.app_server.content_management;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ContentRepository extends JpaRepository<Content, Long> {
    // You can add custom query methods here if needed
}

