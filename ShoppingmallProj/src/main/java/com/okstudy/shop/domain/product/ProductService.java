package com.okstudy.shop.domain.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductDAO productDAO;

    public List<ProductVo> list(Long categoryNo) {
        return productDAO.list(categoryNo);
    }
}
