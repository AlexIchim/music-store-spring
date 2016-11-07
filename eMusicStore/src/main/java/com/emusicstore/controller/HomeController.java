package com.emusicstore.controller;

import com.emusicstore.dao.ProductDAO;
import com.emusicstore.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by Alex PC on 07/11/2016.
 */

@Controller
public class HomeController {

    private ProductDAO productDAO = new ProductDAO();

    @RequestMapping("/")
    public String home() {
        return "home";
    }

    @RequestMapping("/productList")
    public String getProducts (Model model) {
        List<Product> productsList = productDAO.getProductList();
        model.addAttribute("products", productsList);

        return "productList";
    }

    @RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable String productId, Model model) throws IOException {

        Product product = productDAO.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }
}
