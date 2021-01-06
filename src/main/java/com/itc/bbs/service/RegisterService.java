package com.itc.bbs.service;

import com.itc.bbs.domain.RegisterVO;

public interface RegisterService {
	public int addUser(RegisterVO vo) throws Exception;
	public int getOverlapUserId(String userId) throws Exception;
}