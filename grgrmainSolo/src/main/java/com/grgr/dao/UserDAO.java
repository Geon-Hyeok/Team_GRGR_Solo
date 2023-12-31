package com.grgr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.grgr.dto.MyBoardWriteDTO;
import com.grgr.dto.MyCommentDTO;
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
	
	/* 회원 조회(마이페이지) */
	UserVO userProfile(int uno);

	/* 회원 정보 수정 */
	int updateUserProfile(UserVO user);
	
	/* 회원 탈퇴 */
	int deleteUserProfile(int uno);
	
	/*관리자 - 회원보기*/
	List<UserVO> getAllUsers(Map<String, Object> map);
	
	/* 내가 쓴 댓글 조회 */
	List<MyCommentDTO> getCommentList(@Param("uno") int uno, @Param("startRow") int startRow,
			@Param("endRow") int endRow);

	/* 내가 쓴 게시글 조회 */
	List<MyBoardWriteDTO> getBoardWriteList(@Param("uno") int uno, @Param("startRow") int startRow,
			@Param("endRow") int endRow);

	/* 전체 내가 쓴 게시글 수 */
	int selectWriteCount(int uno);

	/* 전체 내가 쓴 댓글 수 */
	int selectCommentCount(int uno);
	
	/*전체 회원 수*/
	int selectUserCount();
	
	/* 관리자 - 회원 정보 수정*/
	void updateUser(UserVO user);
	
	/* 아이디 찾기*/
	String findUserIdByNameAndEmail(String name, String email);
	
	/* 비밀번호 찾기*/
	 public UserVO findUserByIdAndEmail(String userId, String email);
	 
	 /* 비밀번호 업데이트*/
	 public void updateUserPassword(UserVO user);
	 
	 /* 유저 위치 정보 업데이트*/
	 void getAddressFromCoordinate(String  loginId, String address);
}
