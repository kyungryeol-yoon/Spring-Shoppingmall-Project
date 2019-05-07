package com.okstudy.shop.domain.product;

import com.okstudy.shop.util.SHUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    private ProductDAO productDAO;
    @Autowired
    private SHUtils shUtils;

    public List<ProductVo> list(Long categoryNo) {
        return productDAO.list(categoryNo);
    }
    public void save(ProductVo productVo) {
        // 상품은 (생성날짜 년,월,일[20190101])-(uuid 앞 4자리)
//        String newProductId = shUtils.strTodayDate("YYYYMMDD") + shUtils.uuid(4);
//
    }
}
