package com.grgr.service;

import com.grgr.dto.UserVO;

public interface UserService {

	/* 회원 등록 */
	void userJoin(UserVO user) throws Exception;

	/* 아이디 중복 검사 */
	int idCheck(String userId) throws Exception;

	/* 닉네임 중복 검사 */
	int nickNameCheck(String nickName);
	
	/* 로그인 */
	public UserVO userLogin(UserVO user);
}
