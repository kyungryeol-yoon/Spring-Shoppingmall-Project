package com.okstudy.shop.domain.category;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Alias("Category")
@ToString
@Getter @Setter
public class CategoryVo {

    private Long category_idx;
    private Long order_no;
    private String name;
    private String status;
    private Timestamp reg_date;
}
