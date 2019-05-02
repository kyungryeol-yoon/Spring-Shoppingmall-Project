package com.okstudy.shop.domain.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Alias("Member")
@ToString
@Getter @Setter
public class MemberVo {

    private Long member_idx;
    private String member_id;
    private String password;
    private String addr;
    private String name;
    private String phone_number1;
    private String phone_number2;
    private String phone_number3;
    private String email1;
    private String email2;
    private Timestamp reg_date;
    private Timestamp update_date;
}
