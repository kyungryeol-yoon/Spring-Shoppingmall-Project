package com.okstudy.shop.controller;

import com.okstudy.shop.domain.member.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("/")
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@Autowired
	private MemberService memberService;

	@GetMapping("")
	public String home(Model model) {
//		model.addAttribute("member", memberService.findOne() );
		System.out.println(memberService.findOne());

		return "/main/main";
	}
	
}
