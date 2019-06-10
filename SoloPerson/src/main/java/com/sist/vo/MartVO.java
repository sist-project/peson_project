package com.sist.vo;

import lombok.Setter;


public class MartVO {
	
	private int cno;
	private String img,cname,cprice,ccontent,cmenu,cconvenience;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCprice() {
		return cprice;
	}
	public void setCprice(String cprice) {
		this.cprice = cprice;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public String getCmenu() {
		return cmenu;
	}
	public void setCmenu(String cmenu) {
		this.cmenu = cmenu;
	}
	public String getCconvenience() {
		return cconvenience;
	}
	public void setCconvenience(String cconvenience) {
		this.cconvenience = cconvenience;
	}
	
	
	
}
