package com.bw.service;


import javax.servlet.http.HttpSession;

import com.bw.entity.User;

public interface UserService {
	Boolean queryUser(HttpSession session,User user);

}
