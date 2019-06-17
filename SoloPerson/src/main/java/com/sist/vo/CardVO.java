package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

/*
 CNO	NUMBER
BANK	VARCHAR2(100 BYTE)
CARD	VARCHAR2(100 BYTE)
CNAME	VARCHAR2(200 BYTE)
CCONTENT	CLOB
COST	VARCHAR2(200 BYTE)
LIMIT	CLOB
SSERVICE	CLOB
BENEFIT	CLOB
APPLY	VARCHAR2(200 BYTE)
PROFIT	CLOB
POSTER	CLOB
SCONTENT	CLOB
RANK	NUMBER
VNO	VARCHAR2(30 BYTE)
 */

@Getter
@Setter
public class CardVO {

	private int cno;
	private String bank;
	private String card;
	private String cname;
	private String ccontent;
	private String cost;
	private String limit;
	private String sservice;
	private String benefit;
	private String apply;
	private String profit;
	private String poster;
	private String scontent;
	private int rank;
	private String vno;
	
}
