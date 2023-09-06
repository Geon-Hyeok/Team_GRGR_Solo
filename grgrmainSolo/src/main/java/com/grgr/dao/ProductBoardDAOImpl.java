package com.grgr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grgr.dto.InfoFile;
import com.grgr.dto.ProductBoardVO;
import com.grgr.dto.ProductUserDTO;
import com.grgr.mapper.InfoBoardMapper;
import com.grgr.mapper.ProductBoardMapper;
import com.grgr.util.Criteria;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ProductBoardDAOImpl implements ProductBoardDAO {
	private final SqlSession sqlSession;

	@Override
	public List<ProductBoardVO> selectProductBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).selectProductBoardList(map);
	}

	@Override
	public ProductBoardVO selectProductBoard(int productId) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).selectProductBoard(productId);
	}

	@Override
	public Integer selectPrevProductId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).selectPrevProductId(map);
	}

	@Override
	public Integer selectNextProductId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).selectNextProductId(map);
	}

	@Override
	public int insertProduct(ProductBoardVO productBoard) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).insertProduct(productBoard);
	}

	@Override
	public int updateProduct(ProductBoardVO productBoard) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).updateProduct(productBoard);
	}

	@Override
	public int deleteProduct(int productId, int uno) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).deleteProduct(productId, uno);
	}

	@Override
	public int increaseProductViewCnt(int productId) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).increaseProductViewCnt(productId);
	}

	@Override
	public int increaseProductReportNo(int productId) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).increaseProductReportNo(productId);
	}

	@Override
	public int productBoardCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).productBoardCount(map);
	}

	@Override
	public ProductUserDTO getBoardUserInfo(int productId) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).getBoardUserInfo(productId);
	}

	@Override
	public int blindProductBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).blindProductBoard(map);
	}

	@Override
	public int insertInfoFile(InfoFile infoFile) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).insertInfoFile(infoFile);
	}

	@Override
	public List<InfoFile> selectInfoFile(int infoBno) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ProductBoardMapper.class).selectInfoFile(infoBno);
	}

}
