package com.okstudy.shop.domain.member;

import com.okstudy.shop.domain.vo.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public class MemberService {

    @Autowired
    private MemberMapper memberMapper;

    public MemberVo findOne() {
//        return memberMapper.findOne();
        return null;
    }
}
