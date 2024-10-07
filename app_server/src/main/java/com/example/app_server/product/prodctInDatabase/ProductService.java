package com.example.app_server.product.prodctInDatabase;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Product addProduct(Product product) {
        return productRepository.save(product);
    }

    public void removeProduct(Long productId) {
        productRepository.deleteById(productId);
    }

    // You can add more service methods as needed
}

