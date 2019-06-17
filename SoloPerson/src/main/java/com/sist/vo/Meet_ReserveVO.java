package com.sist.vo;
/*
	RMNO        NUMBER        
	RDNO        NUMBER        
	RTITLE      VARCHAR2(100) 
	RDATE       VARCHAR2(200) 
	RTIME       VARCHAR2(100) 
	NOWINWON    NUMBER        
	MAXINWON    NUMBER 
 */
public class Meet_ReserveVO {
	private int rmno;
	private int rdno;
	private String rtitle;
	private String rdate;
	private String rtime;
	private int nowInwon;
	private int maxInwon;
	
	public int getRmno() {
		return rmno;
	}
	public void setRmno(int rmno) {
		this.rmno = rmno;
	}
	public int getRdno() {
		return rdno;
	}
	public void setRdno(int rdno) {
		this.rdno = rdno;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public int getNowInwon() {
		return nowInwon;
	}
	public void setNowInwon(int nowInwon) {
		this.nowInwon = nowInwon;
	}
	public int getMaxInwon() {
		return maxInwon;
	}
	public void setMaxInwon(int maxInwon) {
		this.maxInwon = maxInwon;
	}
	
}
