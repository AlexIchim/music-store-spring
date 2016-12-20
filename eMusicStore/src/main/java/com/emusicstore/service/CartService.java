package com.emusicstore.service;

import com.emusicstore.model.Cart;

/**
 * Created by Alex Ichim on 30.11.2016.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);

    void addCart(Cart cart);
}
