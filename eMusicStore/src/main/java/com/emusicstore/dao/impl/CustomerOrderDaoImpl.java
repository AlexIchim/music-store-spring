package com.emusicstore.dao.impl;

import com.emusicstore.dao.CustomerOrderDao;
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
}
