package com.itc.bbs.domain;

import java.sql.Date;

public class ReservationVO {
	private int reservationNo;
	private int productNo;
	private int placeNo;
	private int performanceNo;
	private String userId;
	private Date reservationDate;
	private int cancelFlag;
	private String productName;
	private String placeName;
	private String seatNo;
	private int productPrice;
	private Date performanceDate;
	private int performanceRound;
	private String performanceStart;
	public int getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(int placeNo) {
		this.placeNo = placeNo;
	}
	public int getPerformanceNo() {
		return performanceNo;
	}
	public void setPerformanceNo(int performanceNo) {
		this.performanceNo = performanceNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}
	public int getCancelFlag() {
		return cancelFlag;
	}
	public void setCancelFlag(int cancelFlag) {
		this.cancelFlag = cancelFlag;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getPlaceName() {
		return placeName;
	}
	public void setPlaceName(String placeName) {
		this.placeName = placeName;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public Date getPerformanceDate() {
		return performanceDate;
	}
	public void setPerformanceDate(Date performanceDate) {
		this.performanceDate = performanceDate;
	}
	public int getPerformanceRound() {
		return performanceRound;
	}
	public void setPerformanceRound(int performanceRound) {
		this.performanceRound = performanceRound;
	}
	public String getPerformanceStart() {
		return performanceStart;
	}
	public void setPerformanceStart(String performanceStart) {
		this.performanceStart = performanceStart;
	}
}