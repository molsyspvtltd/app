package com.example.app_server.nutritionist.registration;

import org.springframework.data.jpa.repository.JpaRepository;

public interface NutritionistRepository  extends JpaRepository<NutritionistRegistration, Long> {
}
