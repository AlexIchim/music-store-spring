package com.emusicstore.service.impl;

import com.emusicstore.dao.CustomerOrderDao;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.CustomerOrder;
import com.emusicstore.service.CartService;
import com.emusicstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Alex Ichim on 01.12.2016.
 */

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderDao customerOrderDao;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        customerOrderDao.addCustomerOrder(customerOrder);
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item :
                cartItems) {
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }

    public List<CustomerOrder> getCustomerOrdersByCustomerId(String userId) {
        return customerOrderDao.getCustomerOrdersByUserId(userId);
    }

    public CustomerOrder getCustomerOrderByUserAndOrderId(String userId, int orderId) {
        return customerOrderDao.getCustomerOrderByUserAndOrderId(userId, orderId);
    }

    public void editOrder(CustomerOrder customerOrder) {
        customerOrderDao.editOrder(customerOrder);
    }
}
