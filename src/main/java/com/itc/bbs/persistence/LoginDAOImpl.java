package com.itc.bbs.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.LoginVO;

@Repository
public class LoginDAOImpl implements LoginDAO {
	
	@Autowired
	private SqlSession sql;
	
	private static String namespace = "bbs.mappers.loginMapper";
	
	@Override
	public LoginVO checkLogin(LoginVO vo) throws Exception {
		return sql.selectOne(namespace+".checkLogin", vo);
	}
	
	@Override
	public int updateUserAddress(LoginVO vo) throws Exception {
		return sql.update(namespace+".updateUserAddress", vo);
	}
	
	@Override 
	public int updateUserPassword(LoginVO vo) throws Exception {
		return sql.update(namespace+".updateUserPassword", vo);
	}
}