package com.grgr.service;

import org.springframework.stereotype.Service;

import com.grgr.dao.UserDAO;
import com.grgr.dto.UserVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

	private final UserDAO userDAO;

	/* 회원가입 */
	@Override
	public void userJoin(UserVO user) throws Exception {
		userDAO.userJoin(user);
	}

	/* 아이디 중복 검사 */
	@Override
	public int idCheck(String userId) throws Exception {
		return userDAO.idCheck(userId);

	}

	/* 닉네임 중복 검사 */
	@Override
	public int nickNameCheck(String nickName) {
		return userDAO.nickNameCheck(nickName);
	}

	/* 로그인 */
	@Override
	public UserVO userLogin(UserVO user) {
		return userDAO.userLogin(user);
	}
}
