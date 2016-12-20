package com.emusicstore.service;

import com.emusicstore.model.Product;
import com.emusicstore.model.Rating;

import java.util.List;

/**
 * Created by Alex Ichim on 28.11.2016.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

    void addRating(Rating rating, int id);

    List<Rating> getRatingLisr(int productId);
}
