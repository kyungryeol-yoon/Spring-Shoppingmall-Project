package com.okstudy.shop.domain.member;

import com.okstudy.shop.domain.vo.MemberVo;
import org.apache.ibatis.annotations.Mapper;

@Mapper("memberMapper")
public interface MemberMapper {

    public MemberVo findOne();
}
