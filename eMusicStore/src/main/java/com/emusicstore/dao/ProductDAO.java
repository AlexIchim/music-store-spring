package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Alex PC on 07/11/2016.
 */
public class ProductDAO {

    private List<Product> productList;

    public List<Product> getProductList() {
        Product product1 = new Product();

        product1.setProductId("123");
        product1.setProductName("Guitar");
        product1.setProductCategory("Instrument");
        product1.setProductDescription("This is a guitar!");
        product1.setProductPrice(1200);
        product1.setProductCondition("new");
        product1.setProductStatus("active");
        product1.setUnitInStock(11);
        product1.setProductManufacturer("Fendex");

        Product product2 = new Product();

        product2.setProductId("151223");
        product2.setProductName("Guitar2");
        product2.setProductCategory("Instrument2");
        product2.setProductDescription("This is a guitar2!");
        product2.setProductPrice(2200);
        product2.setProductCondition("new");
        product2.setProductStatus("active");
        product2.setUnitInStock(51);
        product2.setProductManufacturer("Apple");

        Product product3 = new Product();

        product3.setProductId("1512");
        product3.setProductName("Speaker");
        product3.setProductCategory("Accesory");
        product3.setProductDescription("This is a poke speaker!");
        product3.setProductPrice(355);
        product3.setProductCondition("new");
        product3.setProductStatus("active");
        product3.setUnitInStock(9);
        product3.setProductManufacturer("Poke");

        productList = new ArrayList<Product>();
        productList.add(product1);
        productList.add(product2);
        productList.add(product3);

        return productList;
    }

    public Product getProductById(String productId) throws IOException {
        for (Product product : getProductList()) {
            if (product.getProductId().equals(productId)) {
                return product;
            }
        }

        throw new IOException("No product found");
    }
}
