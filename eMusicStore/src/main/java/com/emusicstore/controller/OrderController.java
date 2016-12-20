package com.emusicstore.controller;

import com.emusicstore.model.Cart;
import com.emusicstore.model.Customer;
import com.emusicstore.model.CustomerOrder;
import com.emusicstore.model.Product;
import com.emusicstore.service.CartService;
import com.emusicstore.service.CustomerOrderService;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

/**
 * Created by Alex Ichim on 01.12.2016.
 */

@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerService customerService;


    @Autowired
    private CustomerOrderService customerOrderService;
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId) {
        CustomerOrder  customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrder.setOrderDate(new Date(Calendar.getInstance().getTime().getTime()));
        customerOrderService.addCustomerOrder(customerOrder);

        Cart newCart = new Cart();
        customer.setCart(newCart);
        newCart.setCustomer(customer);
        cartService.addCart(newCart);
        customerService.editCustomer(customer);

        return "redirect:/checkout?cartId=" + cartId;
    }

    @RequestMapping(value = "/order/orders", method = RequestMethod.GET)
    public String getOrders(@AuthenticationPrincipal User activeUser, Model model) {
        List<CustomerOrder> customerOrders = customerOrderService.getCustomerOrdersByCustomerId(activeUser.getUsername());
        model.addAttribute("orders", customerOrders);

        return "orderList";
    }


}
