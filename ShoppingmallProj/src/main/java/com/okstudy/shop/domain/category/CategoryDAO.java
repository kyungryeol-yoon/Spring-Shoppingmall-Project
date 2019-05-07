package com.okstudy.shop.domain.category;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CategoryDAO {

    public List<CategoryVo> list();
    public CategoryVo findOne(@Param("categoryIdx") Long categoryIdx);
}
