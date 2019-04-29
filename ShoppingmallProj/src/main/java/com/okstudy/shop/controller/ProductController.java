package com.okstudy.shop.controller;

import com.okstudy.shop.domain.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/list/{categoryNo}")
    public String list(@PathVariable Long categoryNo) {
        System.out.println("dong : " + categoryNo);
//        productService.list(categoryNo);
        return "/product/product";
    }
}
