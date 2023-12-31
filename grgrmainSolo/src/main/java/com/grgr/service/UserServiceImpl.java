package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.grgr.dao.UserDAO;
import com.grgr.dto.MyBoardWriteDTO;
import com.grgr.dto.MyCommentDTO;
import com.grgr.dto.UserVO;
import com.grgr.mapper.UserMapper;
import com.grgr.util.AdminPager;
import com.grgr.util.Pager;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

	private final UserDAO userDAO;
	private final UserMapper userMapper;
    private final JavaMailSender mailSender;

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

	/* 회원 조회(마이페이지) */
	@Override
	public UserVO userProfile(int uno) {
		return userDAO.userProfile(uno);
	}

	/* 회원 정보 수정 */
	@Override
	public int updateUserProfile(UserVO user) {
		return userDAO.updateUserProfile(user);
	}

	/* 회원 탈퇴 */
	@Override
	public int deleteUserProfile(int uno) {
		return userDAO.deleteUserProfile(uno);
	}

	/* 내가 쓴 댓글 조회 */
	@Override
	public Map<String, Object> getCommentList(int uno, int pageNum) {
		int totalUser = userDAO.selectCommentCount(uno);
		int pageSize = 10;
		int blockSize = 10;

		AdminPager pager = new AdminPager(pageNum, totalUser, pageSize, blockSize);

		System.out.println(uno);
		List<MyCommentDTO> commentList = userDAO.getCommentList(uno, pager.getStartRow(), pager.getEndRow());

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("pager", pager);
		resultMap.put("commentList", commentList);

		return resultMap;
	}

	@Override
	public Map<String, Object> getBoardWriteList(int uno, int pageNum) {
		int totalUser = userDAO.selectWriteCount(uno);
		int pageSize = 10;
		int blockSize = 10;

		AdminPager pager = new AdminPager(pageNum, totalUser, pageSize, blockSize);

		System.out.println(uno);
		List<MyBoardWriteDTO> boardWriteList = userDAO.getBoardWriteList(uno, pager.getStartRow(), pager.getEndRow());

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("pager", pager);
		resultMap.put("boardWriteList", boardWriteList);

		return resultMap;
	}
	
	/* 관리자 회원 보기 */
	@Override
	public Map<String, Object> getAllUsers(int pageNum) {
		int totalUser = userDAO.selectUserCount();
		int pageSize = 10;
		int blockSize = 10;

		AdminPager adminPager = new AdminPager(pageNum, totalUser, pageSize, blockSize);

		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("startRow", adminPager.getStartRow());
		pageMap.put("endRow", adminPager.getEndRow());
		List<UserVO> userList = userDAO.getAllUsers(pageMap);

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("pager", adminPager);
		resultMap.put("userList", userList);

		return resultMap;
	}
	
	/* 관리자 - 회원 정보 수정*/
	@Transactional
	@Override
	public void updateUser(UserVO user) {
		userDAO.updateUser(user);
	}

	 @Override
	    public String findUserIdByNameAndEmail(String name, String email) {
	        return userDAO.findUserIdByNameAndEmail(name, email);
	    }

	@Override
	public UserVO findUserByIdAndEmail(String userId, String email) {
		return userDAO.findUserByIdAndEmail(userId, email);
	}
	@Transactional
	@Override
	public void updateUserPassword(UserVO user) {
		userDAO.updateUserPassword(user);
		
	}

	

	/* Geolocation API + NaverMaps Reverse-geocode API 를 통해 클라이언트 측에서 보낸 위도, 경도 좌표를 주소명으로 반환*/
	@Override
	public String getAddressFromCoordinates(String loginId, String latitude, String longitude) {
	    String coords = longitude + "," + latitude;
	    String naverUrl = "https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?request=coordsToaddr&coords="
	            +coords+"&sourcecrs=epsg:4326&orders=roadaddr&output=json";

	    RestTemplate restTemplate = new RestTemplate();

	    HttpHeaders headers = new HttpHeaders();
	    headers.add("X-NCP-APIGW-API-KEY-ID", "5vx586o8ep");
	    headers.add("X-NCP-APIGW-API-KEY", "GQiKScHBOVetAAUcHcjgYcnptDyTq3m8Aeva3Stb");

	    HttpEntity<?> entity = new HttpEntity<>(headers);

	    ResponseEntity<String> response = restTemplate.exchange(naverUrl, HttpMethod.GET, entity, String.class);
	    String responseBody = response.getBody();
	    String address = parseAddressFromResponse(responseBody);

	    
	    
	    if (loginId != null) {
	        userDAO.getAddressFromCoordinate(loginId, address);
	    }
	    return address;
	}
	
	/* Naver Maps API의 응답(JSON)을 PARSING 해주는 메소드*/
	
	private String parseAddressFromResponse(String responseBody) {
	    try {
	        ObjectMapper objectMapper = new ObjectMapper();
	        JsonNode rootNode = objectMapper.readTree(responseBody);

	        
	        JsonNode resultsNode = rootNode.path("results");
	        if (resultsNode.isArray() && resultsNode.size() > 0) {
	            JsonNode firstResultNode = resultsNode.get(0);
	            
	            String name = firstResultNode.path("name").asText();

	            
	            JsonNode area1Node = firstResultNode.path("region").path("area1").path("name");
	            JsonNode area2Node = firstResultNode.path("region").path("area2").path("name");
	            JsonNode area3Node = firstResultNode.path("region").path("area3").path("name");

	            
	            String area1Name = area1Node.asText();
	            String area2Name = area2Node.asText();
	            String area3Name = area3Node.asText();

	            
	            String combinedAddress = area1Name + ", " + area2Name + ", " + area3Name;
	            return combinedAddress;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return null; 
	}

	
		
	}

