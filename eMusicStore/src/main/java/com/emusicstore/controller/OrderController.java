package com.emusicstore.controller;

import com.emusicstore.model.*;
import com.emusicstore.service.CartService;
import com.emusicstore.service.CustomerOrderService;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Paths;
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

    @RequestMapping(value = "/order/orders/{customerId}", method = RequestMethod.GET)
    public String getOrdersById(@PathVariable String customerId, Model model) {
        List<CustomerOrder> customerOrders = customerOrderService.getCustomerOrdersByCustomerId(customerId);
        model.addAttribute("orders", customerOrders);

        return "orderList";
    }


    @RequestMapping(value = "/admin/orders/editOrder/{customerId}/{orderId}")
    public String editOrderById(@PathVariable String customerId, @PathVariable int orderId, Model model) {
        CustomerOrder customerOrder = customerOrderService.getCustomerOrderByUserAndOrderId(customerId, orderId);

        customerOrder.setCustomerOrderId(orderId);
        customerOrder.setCustomer(customerService.getCustomerByUsername(customerId));
        model.addAttribute("customerOrder", customerOrder);

        return "editCustomerOrder";
    }

    @RequestMapping(value = "/admin/orders/editOrder", method = RequestMethod.POST)
    public String editOrderPost(@Valid @ModelAttribute("items") List<CartItem> cartItems, BindingResult result,
                                HttpServletRequest request) {
        if (result.hasErrors()) {
            return "editCustomerOrder";
        }

        return "redirect:/admin/customer";
    }
}
