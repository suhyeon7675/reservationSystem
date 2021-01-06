package com.itc.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.LoginVO;
import com.itc.bbs.persistence.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginDAO dao;
	
	@Override
	public LoginVO checkLogin(LoginVO vo) throws Exception {
		return dao.checkLogin(vo);
	}

	@Override
	public int updateUserAddress(LoginVO vo) throws Exception {
		return dao.updateUserAddress(vo);
	}

	@Override
	public int updateUserPassword(LoginVO vo) throws Exception {
		return dao.updateUserPassword(vo);
	}
}