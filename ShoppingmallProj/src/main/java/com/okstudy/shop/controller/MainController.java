package com.okstudy.shop.controller;

import com.okstudy.shop.domain.category.CategoryService;
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
	@Autowired
	private CategoryService categoryService;

	@GetMapping("")
	public String home(Model model) {
//		model.addAttribute("member", memberService.findOne() );
		System.out.println(categoryService.list());
		model.addAttribute("categorys", categoryService.list());
		return "/main/main";
	}
	
}
