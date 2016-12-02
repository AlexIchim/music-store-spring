package com.emusicstore.service;

import com.emusicstore.model.CustomerOrder;

/**
 * Created by Alex Ichim on 01.12.2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
