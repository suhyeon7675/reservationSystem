package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SqlSession sql;
	private static String namespace = "bbs.mappers.ProductMapper";
	
	@Override
	public List<ProductVO> getProductList(int proCategory) throws Exception {
		return sql.selectList(namespace+".getProductList", proCategory);
	}

	@Override
	public ProductVO getProductDetail(int productNo) throws Exception {
		return sql.selectOne(namespace+".getProductDetail", productNo);
	}

	@Override
	public List<PerformVO> getPerformList(int productNo) throws Exception {
		return sql.selectList(namespace+".getPerformList", productNo);
	}
	
	
}