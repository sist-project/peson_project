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
@Setter
@Getter
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
}
