package com.emusicstore.service.impl;

import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import com.emusicstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Alex Ichim on 30.11.2016.
 */

@Service
public class CartServiceImpl implements CartService {

    @Autowired
    private CartDao cartDao;

    public Cart getCartById(int cartId) {
        return cartDao.getCartById(cartId);
    }

    public void update(Cart cart) {
        cartDao.update(cart);
    }

    public void addCart(Cart cart) {
        cartDao.addCart(cart);
    }
}
