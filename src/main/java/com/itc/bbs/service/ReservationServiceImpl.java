package com.itc.bbs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.domain.SeatVO;
import com.itc.bbs.persistence.ReservationDAO;

@Service
public class ReservationServiceImpl implements ReservationService {
	@Autowired
	private ReservationDAO dao;
	
	@Override
	public  List<ReservationVO> getReservationList(String userId) throws Exception {
		return dao.getReservationList(userId);
	}
	
	@Override
	public void cancelReservation(ReservationVO vo) throws Exception {
		dao.cancelReservation(vo);
	}

	@Override
	public List<SeatVO> getSeatList(int performanceNo) throws Exception {
		return dao.getSeatList(performanceNo);
	}

	@Override
	public void addReservation(ReservationVO vo) throws Exception {
		dao.addReservation(vo);
	}
}