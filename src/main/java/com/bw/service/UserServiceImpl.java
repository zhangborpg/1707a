package com.bw.service;


import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bw.entity.User;
import com.bw.mapper.UserMapper;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper mapper;

	public Boolean queryUser(HttpSession session,User user) {
		// TODO Auto-generated method stub
		User user2 = mapper.queryUser(user);
		if (user2!=null) {
			session.setAttribute("user", user2);
			return true;
		}
		return false;
	}
}
