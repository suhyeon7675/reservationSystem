package com.itc.bbs.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itc.bbs.domain.LoginVO;
import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.domain.SeatVO;
import com.itc.bbs.service.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationService;
	
	@GetMapping("/reservationList")
	   public String getReservationList(Model model, ReservationVO vo, HttpSession session) throws Exception {
	      LoginVO lvo = (LoginVO)session.getAttribute("member");
	      String userId = (String)lvo.getUserId();
	      model.addAttribute("reservationList", reservationService.getReservationList(userId));
	      return "reservation/reservationList";
	   }
	
	@GetMapping("/reservationCancel")
	public String cancelReservation(Model model, ReservationVO vo, @RequestParam("reservationNo") int reservationNo, @RequestParam("performanceNo") int performanceNo) throws Exception {
		reservationService.cancelReservation(vo);
		System.out.print(reservationNo);
		System.out.print(performanceNo);
		return "redirect:/";
	}
	
	@PostMapping("/getSeatList")
	public String chooseSeat(Model model, ReservationVO vo, @RequestParam("perform") int performanceNo, @RequestParam("productNo") int productNo, @RequestParam("placeNo") int placeNo) throws Exception {
		model.addAttribute("seatList", reservationService.getSeatList(performanceNo));
		model.addAttribute("performanceNo", performanceNo);
		model.addAttribute("productNo", productNo);
		model.addAttribute("placeNo", placeNo);
		return "product/seat";
	}
	
	@PostMapping("/reserveComplete")
	public String completeReserve(Model model, ReservationVO vo, @RequestParam("seatCheck") String seatNo, @RequestParam("userId") String userId, @RequestParam("productNo") int productNo, @RequestParam("performanceNo") int performanceNo, @RequestParam("placeNo") int placeNo) throws Exception {
		vo.setSeatNo(seatNo);
		vo.setUserId(userId);
		vo.setProductNo(productNo);
		vo.setPerformanceNo(performanceNo);
		vo.setPlaceNo(placeNo);
		System.out.println(placeNo);
		reservationService.addReservation(vo);
		return "main";
	}
}