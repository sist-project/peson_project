package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Room_furnitureVO {
	/*PRODUCTNO	NUMBER
	PRODUCTNAME	VARCHAR2(100 BYTE)
	PRODUCTIMG	VARCHAR2(300 BYTE)
	RETAILPRICE	VARCHAR2(100 BYTE)
	SALEPRICE	VARCHAR2(100 BYTE)
	SHIPPINGFEE	VARCHAR2(100 BYTE)
	CONTENT	VARCHAR2(100 BYTE)
	OPTION_SELECT	VARCHAR2(2000 BYTE)
	OPTION_COLOR	VARCHAR2(2000 BYTE)
	CATENO	NUMBER*/
	
	private int productno;
	private String productname;
	private String productimg;
	private String retailprice;
	private String saleprice;
	private String shippingfee;
	private String content;
	private String option_select;
	private String option_color;
}
