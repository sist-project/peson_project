package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

/*
	MNO       NOT NULL NUMBER        
	THUMBNAIL          VARCHAR2(500) 
	TITLE              VARCHAR2(100) 
	SUBTITLE           VARCHAR2(100) 
	PRICE              VARCHAR2(50)  
	LOC                VARCHAR2(200) 
	RATE               VARCHAR2(50)  
	HOST               VARCHAR2(50)  
	CONTENT            CLOB    
 */

public class MeetVO {
	private int mno;
	private String thumbnail;
	private String title;
	private String subtitle;
	private String price;
	private String loc;
	private String rate;
	private String host;
	private String content;
	private int rcount;
	
	public int getRcount() {
		return rcount;
	}
	public void setRcount(int rcount) {
		this.rcount = rcount;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSubtitle() {
		return subtitle;
	}
	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
