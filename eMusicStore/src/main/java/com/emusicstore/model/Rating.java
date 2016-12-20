package com.emusicstore.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Alex Ichim on 05.12.2016.
 */

@Entity
public class Rating {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int ratingId;

    private String ratingComment;
    private int ratingValue;


    @ManyToOne
    @JoinColumn(name = "productId")
    private Product productToRate;


    public int getRatingId() {
        return ratingId;
    }

    public void setRatingId(int ratingId) {
        this.ratingId = ratingId;
    }

    public String getRatingComment() {
        return ratingComment;
    }

    public void setRatingComment(String ratingComment) {
        this.ratingComment = ratingComment;
    }

    public int getRatingValue() {
        return ratingValue;
    }

    public void setRatingValue(int ratingValue) {
        this.ratingValue = ratingValue;
    }

    public Product getProductToRate() {
        return productToRate;
    }

    public void setProductToRate(Product productToRate) {
        this.productToRate = productToRate;
    }
}
