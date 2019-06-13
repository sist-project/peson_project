package com.sist.vo;
/*
	NO      NOT NULL NUMBER       
	RNO              NUMBER       
	NAME    NOT NULL VARCHAR2(20) 
	MSG     NOT NULL CLOB         
	REGDATE          DATE   
 */

import java.util.Date;

public class Meet_ReplyVO {
	private int no;
	private int rno;
	private String name;
	private String msg;
	private Date regdate;
	private String db_day;	//TO_CHAR => ½Ã°£
	
	public String getDb_day() {
		return db_day;
	}
	public void setDb_day(String db_day) {
		this.db_day = db_day;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
}
