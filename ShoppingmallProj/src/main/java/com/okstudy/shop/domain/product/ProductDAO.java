package com.okstudy.shop.domain.product;


import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductDAO {

    public List<ProductVo> list(@Param("categoryNo") Long categoryNo);
    public List<ProductVo> findOne(@Param("productId") String productId);
}
