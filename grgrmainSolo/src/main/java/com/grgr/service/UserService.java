package com.grgr.service;

import java.util.List;
import java.util.Map;

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
	
	/* 회원 조회(마이페이지) */
	UserVO userProfile(int uno);

	/* 회원 정보 수정 */
	int updateUserProfile(UserVO user);

	/* 회원 탈퇴 */
	int deleteUserProfile(int uno);

	/* 내가 쓴 댓글 조회 */
	Map<String, Object> getCommentList(int uno, int pageNum);

	/* 내가 쓴 게시글 조회 */
	Map<String, Object> getBoardWriteList(int uno, int pageNum);
	
	/*아이디 찾기*/
	public String findUserIdByNameAndEmail(String name, String email);
	
	/*관리자 - 회원보기*/
	Map<String, Object> getAllUsers(int pageNum);
	
	/* 관리자 - 회원 정보 수정*/
	void updateUser(UserVO user);

	/* 비밀번호 찾기*/
	 public UserVO findUserByIdAndEmail(String userId, String email);
	 
	 /* 비밀번호 업데이트*/
	 public void updateUserPassword(UserVO user);
	 
	 /* 유저 위치 정보 업데이트*/
	 String getAddressFromCoordinates(String loginId, String latitude, String longitude);
}
