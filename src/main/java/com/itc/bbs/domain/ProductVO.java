package com.itc.bbs.domain;

import java.util.Date;

public class ProductVO {
	private int productNo;
	private String productName;
	private int productPrice;    
	private int productRating;
	private String productAppearance;
	private String productRunningTime;
	private Date productStartDate;
	private Date productEndDate;
    
	private int categoryNo;
    
	private String placeNo;
	private String placeName;
	private String placeLot;
	private String placeStreet;
    private String placeTel;
    
    private String thumbnail;
    private String description;
    
    
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
    public int getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }
    public int getProductRating() {
        return productRating;
    }
    public void setProductRating(int productRating) {
        this.productRating = productRating;
    }
    public String getProductAppearance() {
        return productAppearance;
    }
    public void setProductAppearance(String productAppearance) {
        this.productAppearance = productAppearance;
    }
    
    public String getProductRunningTime() {
        return productRunningTime;
    }
    public void setProductRunningTime(String productRunningTime) {
        this.productRunningTime = productRunningTime;
    }
    public Date getProductStartDate() {
        return productStartDate;
    }
    public void setProductStartDate(Date productStartDate) {
        this.productStartDate = productStartDate;
    }
    public Date getProductEndDate() {
        return productEndDate;
    }
    public void setProductEndDate(Date productEndDate) {
        this.productEndDate = productEndDate;
    }
    public int getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}
	public String getPlaceNo() {
		return placeNo;
	}
	public void setPlaceNo(String placeNo) {
		this.placeNo = placeNo;
	}
	public String getPlaceName() {
	    return placeName;
    }
    public void setPlaceName(String placeName) {
        this.placeName = placeName;
    }
    public String getPlaceLot() {
        return placeLot;
    }
    public void setPlaceLot(String placeLot) {
        this.placeLot = placeLot;
    }
    public String getPlaceStreet() {
        return placeStreet;
    }
    public void setPlaceStreet(String placeStreet) {
        this.placeStreet = placeStreet;
    }
    public String getPlaceTel() {
        return placeTel;
    }
    public void setPlaceTel(String placeTel) {
        this.placeTel = placeTel;
    }
    public String getThumbnail() {
        return thumbnail;
    }
    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
}