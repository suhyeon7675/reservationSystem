package com.itc.bbs.domain;

import java.sql.Date;

public class PerformVO {
	private int performanceNo;
	private int productNo;
	private String productName;
	private Date performanceDate;
	private int performanceRound;
	private String performanceStart;
	
	
	public int getPerformanceNo() {
		return performanceNo;
	}
	public void setPerformanceNo(int performanceNo) {
		this.performanceNo = performanceNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
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