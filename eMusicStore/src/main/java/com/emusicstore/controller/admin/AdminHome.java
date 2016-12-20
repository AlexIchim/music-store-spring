package com.emusicstore.controller.admin;

import com.emusicstore.model.Customer;
import com.emusicstore.model.Product;
import com.emusicstore.service.CustomerService;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;
import java.util.List;

/**
 * Created by Alex Ichim on 28.11.2016.
 */

@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage() {
        return "admin";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }


    @RequestMapping("/customer")
    public String customerManagement(Model model) {
        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);
        return "customerManagement";
    }

    @RequestMapping(value = "/customer2", method = RequestMethod.GET, produces = "application/json")
    public
    @ResponseBody
    List<Customer> custmerManagement2() {
        return customerService.getAllCustomers();
    }

    @RequestMapping("/customer/viewCustomer/{customerId}")
    public String viewCustomer(@PathVariable int customerId, Model model) throws IOException {
        Customer customer = customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);

        return "viewCustomer";
    }

    @RequestMapping("/customer/editCustomer/{customerId}")
    public String editCustomer(@PathVariable("customerId") int customerId, Model model) {
        Customer customer = customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);

        return "editCustomer";
    }


    @RequestMapping(value = "/customer/editCustomer", method = RequestMethod.POST)
    public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult bindingResult,
                                   HttpServletRequest request) {


        if (bindingResult.hasErrors())
            return "editCustomer";

        customerService.editCustomer(customer);
        return "redirect:/admin/customer";
    }
}
