package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.Visit_FoodMapper;
import com.sist.vo.FoodVO;
import com.sist.vo.VisitVO;

import java.util.*;
@Repository
public class Visit_FoodDAO {
	@Autowired
	private Visit_FoodMapper mapper;
	
	public List<VisitVO> visitAllData()
	{
		return mapper.visitAllData();
	}
	
	public VisitVO visitDetailData(int vno)
	{
		return mapper.visitDetailData(vno);
	}
	
	public List<FoodVO> foodAllData()
	{
		return mapper.foodAllData();
	}
	
	public FoodVO foodDeailData(int fno)
	{
		return mapper.foodDetailData(fno);
	}
}
