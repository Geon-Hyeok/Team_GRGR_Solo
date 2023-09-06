package com.grgr.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.grgr.dao.ProductBoardDAO;
import com.grgr.dto.InfoBoard;
import com.grgr.dto.InfoFile;
import com.grgr.dto.ProductBoardVO;
import com.grgr.dto.ProductUserDTO;
import com.grgr.util.Pager;
import com.grgr.util.SearchCondition;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductBoardServiceImpl implements ProductBoardService {

	private final ProductBoardDAO productBoardDAO;

	@Override
	public Map<String, Object> getProductBoardList(SearchCondition searchCondition) {

		Map<String, Object> searchMap = createSearchMap(searchCondition);
		int totalBoard = productBoardCount(searchCondition);

		Pager pager = new Pager(totalBoard, searchCondition);

		// 페이징 계산
		searchMap.put("startRow", pager.getStartRow());
		searchMap.put("endRow", pager.getEndRow());

		List<ProductBoardVO> productBoardList = productBoardDAO.selectProductBoardList(searchMap);

		List<String> fileList = new ArrayList<String>();
		for (ProductBoardVO productBoard : productBoardList) {
			List<InfoFile> infoFiles = productBoardDAO.selectInfoFile(productBoard.getProductId());
			if (!infoFiles.isEmpty()) {
				fileList.add(infoFiles.get(0).getInfoFileUpload());
			} else {
				fileList.add("placeholder-square.jpg");
			}
		}

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("productBoardList", productBoardList);
		resultMap.put("pager", pager); // pager 객체를 반환
		// resultMap.put("searchMap", searchMap);
		resultMap.put("fileList", fileList);

		return searchMap;
	}

	@Override
	public Map<String, Object> getProductBoard(int productId) {

		Map<String, Object> readMap = new HashMap<String, Object>();

		ProductBoardVO productBoard = productBoardDAO.selectProductBoard(productId);
		String productConentIncludeEnter = productBoard.getProductContent().replace("\r\n", "<br>"); // 개행문자를 포함하여
																										// 출력하기위함
		productBoard.setProductContent(productConentIncludeEnter);
		readMap.put("productBoard", productBoard);
		readMap.put("infoFiles", productBoardDAO.selectInfoFile(productId));

		return readMap;
	}

	@Override
	public Integer prevProductId(SearchCondition searchCondition, int productId) {
		Map<String, Object> searchMap = createSearchMap(searchCondition);
		searchMap.put("productId", productId);

		return productBoardDAO.selectPrevProductId(searchMap);
	}

	@Override
	public Integer nextProductId(SearchCondition searchCondition, int productId) {
		Map<String, Object> searchMap = createSearchMap(searchCondition);
		searchMap.put("productId", productId);

		return productBoardDAO.selectNextProductId(searchMap);
	}

	@Override
	public int addProduct(ProductBoardVO productBoard, List<MultipartFile> files) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyProduct(ProductBoardVO productBoard) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int removeProduct(int productId, int uno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int productBoardCount(SearchCondition searchCondition) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ProductUserDTO getBoardUserInfo(int productId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int hideProductBoard(int productId, int loginUser, int loginUserStatus) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 검색관련 맵객체 생성 메서드
	private Map<String, Object> createSearchMap(SearchCondition searchCondition) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getSearchKeyword() != null && !searchCondition.getSearchKeyword().isEmpty()) {
				searchMap.put("searchKeyword", searchCondition.getSearchKeyword());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().trim().isEmpty()) {
				searchMap.put("infoKeyword", searchCondition.getKeyword().trim());
			}
//				if (searchCondition.getLocation() != null && !searchCondition.getLocation().trim().isEmpty()) {
//					searchMap.put("infoLoc", searchCondition.getLocation().trim());
//				}
		}

		return searchMap;
	}

}
