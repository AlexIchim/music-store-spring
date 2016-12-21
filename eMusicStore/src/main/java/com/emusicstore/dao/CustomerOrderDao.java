package com.emusicstore.dao;

import com.emusicstore.model.Customer;
import com.emusicstore.model.CustomerOrder;

import java.util.List;

/**
 * Created by Alex Ichim on 01.12.2016.
 */
public interface CustomerOrderDao {

    void addCustomerOrder(CustomerOrder customerOrder);

    List<CustomerOrder> getCustomerOrdersByUserId(String userId);

    CustomerOrder getCustomerOrderByUserAndOrderId(String userId, int orderId);

    void editOrder(CustomerOrder customerOrder);
}
