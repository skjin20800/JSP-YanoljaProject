package com.jkb.yanolja.service;

import com.jkb.yanolja.domain.user.User;
import com.jkb.yanolja.domain.user.UserDao;
import com.jkb.yanolja.domain.user.dto.JoinReqDto;
import com.jkb.yanolja.domain.user.dto.LoginReqDto;

public class UserService {

	UserDao userDao= new UserDao();

	public int 회원가입(JoinReqDto dto) {
		return userDao.save(dto);
	}

	public User 로그인(LoginReqDto dto) {
		return userDao.findByUsernameAndPassword(dto);
	}

	public int 아이디중복체크(String username) {
		int result = userDao.usernameCheck(username);
		return result;
	}
}