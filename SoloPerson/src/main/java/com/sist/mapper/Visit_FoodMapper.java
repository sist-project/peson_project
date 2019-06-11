package com.sist.mapper;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.FoodVO;
import com.sist.vo.VisitVO;

import java.util.*;
public interface Visit_FoodMapper {

	@Select("SELECT title,content,img,addr,vNo FROM Visit")
	public List<VisitVO> visitAllData();
	
	@Select("SELECT title,content,img,addr,vNo FROM visit WHERE vNo=#{vno}")
	public VisitVO visitDetailData(int vno);
	
	@Select("SELECT img,addr,tel,kind,price,title,fNo,time FROM food")
	public List<FoodVO> foodAllData();
	
	@Select("SELECT img,addr,tel,kind,price,title,fNo,time FROM food WHERE fNo=#{fno}")
	public FoodVO foodDetailData(int fno);
}
