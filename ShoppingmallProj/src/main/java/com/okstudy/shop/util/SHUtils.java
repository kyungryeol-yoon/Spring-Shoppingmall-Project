package com.okstudy.shop.util;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.UUID;

// 각종 자바 유틸리티 Bean
@Component
public class SHUtils {

    public String uuid(int cipher) {
        return UUID.randomUUID().toString().replace("-", "").substring(0, cipher);
    }

    public String strTodayDate(String format) {
        return null;
    }
}


