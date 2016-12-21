package com.emusicstore.dao.impl;

import com.emusicstore.dao.CustomerOrderDao;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.Customer;
import com.emusicstore.model.CustomerOrder;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Alex Ichim on 01.12.2016.
 */

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }

    public List<CustomerOrder> getCustomerOrdersByUserId(String userId) {
        Session session = sessionFactory.getCurrentSession();
        Query query1 = session.createQuery("FROM Customer WHERE username = ?");
        query1.setString(0, userId);

        Customer customer = (Customer) query1.uniqueResult();


        Query query = session.createQuery("FROM CustomerOrder WHERE customerid = ?");
        query.setInteger(0, customer.getCustomerId());
        session.flush();

        return (List<CustomerOrder>) query.list();
    }

    public CustomerOrder getCustomerOrderByUserAndOrderId(String userId, int orderId) {
        Session session = sessionFactory.getCurrentSession();
        Query query1 = session.createQuery("FROM Customer WHERE username = ?");
        query1.setString(0, userId);

        Customer customer = (Customer) query1.uniqueResult();

        Query query = session.createQuery("FROM CustomerOrder WHERE customerid = ? AND customerorderid = ?");
        query.setInteger(0, customer.getCustomerId());
        query.setInteger(1, orderId);

        return (CustomerOrder) query.uniqueResult();
    }

    public void editOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        for (CartItem cartItem :
                customerOrder.getCart().getCartItems()) {
            cartItem.setCart(customerOrder.getCart());
            cartItem.setProduct(cartItem.getProduct());
            session.saveOrUpdate(cartItem);
        }


        session.saveOrUpdate(customerOrder.getCart());

        int grandTotal = 0;
        /* For each cartItem recalculating the total price after update*/
        /*for (CartItem cartItem:
                customerOrder.getCart().getCartItems()) {
                cartItem.setTotalPrice(cartItem.getProduct().getProductPrice() * cartItem.getQuantity());
                grandTotal += cartItem.getTotalPrice();
        }

        *//* Set total price for order *//*
        customerOrder.getCart().setGrandTotal(grandTotal);*/
        session.saveOrUpdate(customerOrder);
        session.flush();
    }
}
