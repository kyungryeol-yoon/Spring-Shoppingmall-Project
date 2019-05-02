package com.okstudy.shop.domain.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService{

    @Autowired
    private MemberDAO memberDAO;

    public MemberVo findOne() {
        return memberDAO.findOne();
    }
}