package com.xms.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xms.dao.UserMapper;
import com.xms.entity.User;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private UserMapper userMapper;

	@RequestMapping("/toLogin")
	public String toLogin() {
		return "jsp/login";
	}
	
	@RequestMapping("/login")
	public String login(String email,
		String password,HttpServletRequest request) {
		
		User user = userMapper.findUserByEmail(email);
		
		if (user == null || !user.getPassword().equals(password)) {
			request.setAttribute("message","账号或密码错误");
			return "jsp/login";
		} else{
			request.getSession().setAttribute("user",user);
			return "redirect:/main/toIndex";
		}
		
	}
	
	@RequestMapping("/loginOut")
	public String loginOut(HttpServletRequest request) {
		
		request.getSession().setAttribute("user",null);
		
		return "redirect:/main/toIndex";
		
	}
	
}
