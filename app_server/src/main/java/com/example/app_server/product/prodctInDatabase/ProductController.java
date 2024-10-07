package com.example.app_server.product.prodctInDatabase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @PostMapping("/add")
    public ResponseEntity<Product> addProduct(@RequestBody Product product) {
        Product addedProduct = productService.addProduct(product);
        return ResponseEntity.ok(addedProduct);
    }

    @DeleteMapping("/remove/{productId}")
    public ResponseEntity<String> removeProduct(@PathVariable Long productId) {
        productService.removeProduct(productId);
        return ResponseEntity.ok("Product removed successfully");
    }

    // You can add more endpoints for product management as needed
}
