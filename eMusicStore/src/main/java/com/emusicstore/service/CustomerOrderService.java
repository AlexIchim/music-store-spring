package com.emusicstore.service;

import com.emusicstore.model.CustomerOrder;

import java.util.List;

/**
 * Created by Alex Ichim on 01.12.2016.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);

    List<CustomerOrder> getCustomerOrdersByCustomerId(String userId);
}
