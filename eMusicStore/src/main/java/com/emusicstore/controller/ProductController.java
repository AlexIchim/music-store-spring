package com.emusicstore.controller;

import com.emusicstore.model.Product;
import com.emusicstore.model.Rating;
import com.emusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/productList", method = RequestMethod.GET)
    public String getProducts(Model model) {
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }


    @RequestMapping(value = "/viewProduct/{productId}", method = RequestMethod.GET)
    public String viewProduct(@PathVariable int productId, Model model) throws IOException {
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);
        Rating rating = new Rating();
        model.addAttribute("rating", rating);

        List<Rating> ratings = productService.getRatingLisr(productId);
        model.addAttribute("ratingList", ratings);

        model.addAttribute("commentSubmit", false);

        return "viewProduct";
    }


    @RequestMapping(value = "/addRating/{productId}", method = RequestMethod.POST)
    public String addRating(@PathVariable int productId, @Valid @ModelAttribute("rating") Rating rating, BindingResult result,
                            HttpServletRequest request, Model model) {
        if (result.hasErrors())
            return "/viewProduct/" + productId;


        productService.addRating(rating, productId);
        model.addAttribute("commentSubmit", true);

        return "redirect:/product/viewProduct/" + productId;
    }
/*
    @RequestMapping(value = "/addRating2/{productId}", method = RequestMethod.POST)
    ResponseEntity<?> add(@PathVariable String productId, @RequestBody Rating rating) {
        productService.addRating(rating, Integer.valueOf(productId));
    }*/

}
