package com.itc.bbs.persistence;

import com.itc.bbs.domain.RegisterVO;

public interface RegisterDAO {
	public int addUser(RegisterVO vo) throws Exception;
	public int getOverlapUserId(String userId) throws Exception;
}