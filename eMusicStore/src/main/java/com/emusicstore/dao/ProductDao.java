package com.emusicstore.dao;

import com.emusicstore.model.Product;
import com.emusicstore.model.Rating;

import java.util.List;

/**
 * Created by Alex PC on 07/11/2016.
 */
public interface ProductDao {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);

    void addRating(Rating rating, int id);

    List<Rating> getRatingList(int productId);
}
