package com.emusicstore.controller;

import com.emusicstore.model.BillingAddress;
import com.emusicstore.model.Customer;
import com.emusicstore.model.ShippingAddress;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.List;

/**
 * Created by Alex Ichim on 29.11.2016.
 */

@Controller
public class RegisterController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/register")
    public String registerCustomer(Model model) {
        Customer customer = new Customer();
        BillingAddress billingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();
        customer.setBillingAddress(billingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "registerCustomer";
    }


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomer(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
                                   Model model) {

        if (result.hasErrors()) {
            return "registerCustomer";
        }

        List<Customer> customerList = customerService.getAllCustomers();

        for (Customer customerItem :
                customerList) {
            if (customer.getCustomerEmail().equals(customerItem.getCustomerEmail())) {
                model.addAttribute("emailMsg", "Email already exists !");

                return "registerCustomer";
            }

            if (customer.getUsername().equals(customerItem.getUsername())) {
                model.addAttribute("usernameMsg", "Username already exists !");

                return "registerCustomer";
            }

        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);
        return "registerCustomerSuccess";
    }
}
