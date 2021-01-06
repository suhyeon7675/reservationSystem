package com.itc.bbs.service;

import java.util.List;

import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.domain.SeatVO;

public interface ReservationService {
	public List<ReservationVO> getReservationList(String userId) throws Exception;
	
	public void cancelReservation(ReservationVO vo) throws Exception;
	
	public List<SeatVO> getSeatList(int performanceNo) throws Exception;
	
	public void addReservation(ReservationVO vo) throws Exception;
}