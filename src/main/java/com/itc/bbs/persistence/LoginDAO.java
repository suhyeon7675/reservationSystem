package com.itc.bbs.persistence;

import com.itc.bbs.domain.LoginVO;

public interface LoginDAO {
	public LoginVO checkLogin(LoginVO vo) throws Exception;
	
	public int updateUserAddress(LoginVO vo) throws Exception;
	
	public int updateUserPassword(LoginVO vo) throws Exception;
}