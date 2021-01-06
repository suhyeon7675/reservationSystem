package com.itc.bbs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.persistence.RegisterDAO;

@Service
public class RegisterServiceImpl implements RegisterService{
	@Autowired
	private RegisterDAO dao;
	
	@Override
	public int addUser(RegisterVO vo) throws Exception {
		return dao.addUser(vo);
	}
	
	@Override
	public int getOverlapUserId(String userId) throws Exception {
		return dao.getOverlapUserId(userId);
	}
}