package com.grgr.dao;

import com.grgr.dto.UserVO;

public interface UserDAO {

	/* 회원 등록 */
	int userJoin(UserVO user);

	/* 아이디 중복 검사 */
	int idCheck(String userId);

	/* 닉네임 중복 검사 */
	int nickNameCheck(String nickName);

	/* 로그인 */
	public UserVO userLogin(UserVO user);
}
