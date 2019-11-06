package com.bw.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bw.entity.User;
import com.bw.service.UserService;

@Controller
public class UserController {

	@Resource
	private UserService service;
	
	@RequestMapping("login")
	@ResponseBody
	public Boolean list(HttpSession session,User user) {
		Boolean flag = service.queryUser(session, user);
		return flag;
	}
}
