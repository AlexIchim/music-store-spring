package com.emusicstore.controller;

import com.emusicstore.model.Customer;
import com.emusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by Alex Ichim on 21.12.2016.
 */
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value = "/customer/editCustomer")
    public String editCustomer(@AuthenticationPrincipal User activeUser, Model model) {
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        model.addAttribute("customer", customer);

        return "editCustomer";
    }

    @RequestMapping(value = "/customer/editCustomer", method = RequestMethod.POST)
    public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult,
                                   HttpServletRequest request) {


        if (bindingResult.hasErrors())
            return "editCustomer";

        customerService.editCustomer(customer);
        return "redirect:/";
    }
}
