package com.itc.bbs.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.domain.SeatVO;

@Repository
public class ReservationDAOImpl implements ReservationDAO {
	@Autowired
	private SqlSession sql;
	private static String namespace = "bbs.mappers.ReservationMapper";
	
	@Override
	public List<ReservationVO> getReservationList(String userId) throws Exception {
		return sql.selectList(namespace+".getReservationList", userId);
	}
	
	@Override
	public void cancelReservation(ReservationVO vo) throws Exception {
		sql.delete(namespace+".cancelReservation", vo);
		sql.update(namespace+".cancelSeat", vo);
	}

	@Override
	public List<SeatVO> getSeatList(int performanceNo) throws Exception {
		return sql.selectList(namespace+".getSeatList", performanceNo);
	}

	@Override
	public void addReservation(ReservationVO vo) throws Exception {
		sql.insert(namespace+".addReservation", vo);
		sql.update(namespace+".updateSeat", vo);
	}

}