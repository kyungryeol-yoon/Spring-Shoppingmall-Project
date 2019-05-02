package com.okstudy.shop.controller;

import com.okstudy.shop.domain.category.CategoryService;
import com.okstudy.shop.domain.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private ProductService productService;

    @GetMapping("/list/{categoryNo}")
    public String list(Model model, @PathVariable Long categoryNo) {
//        productService.list(categoryNo);
        System.out.println("dong : " + categoryNo);
        model.addAttribute("categoryIdx", categoryNo);
        model.addAttribute("categorys", categoryService.list());

        return "/product/product";
    }
}
