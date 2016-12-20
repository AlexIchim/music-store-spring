package com.emusicstore.dao;

import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;

import java.io.IOException;

/**
 * Created by Alex Ichim on 25.11.2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);

    void addCart(Cart cart);
}
