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

    private Long memberIdx;
    private String memberId;
    private String password;
    private String addr;
    private String name;
    private String phoneNumber1;
    private String phoneNumber2;
    private String phoneNumber3;
    private String email1;
    private String email2;
    private Timestamp regDate;
    private Timestamp updateDate;
}
