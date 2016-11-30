package com.emusicstore.dao;

import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;

/**
 * Created by Alex Ichim on 25.11.2016.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
