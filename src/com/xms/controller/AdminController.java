package com.xms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/manager")
public class AdminController {
	@RequestMapping("/toLogin")
	public String toLogin() {
		System.out.println("a");
		return "jsp/adminLogin";
	}
}
