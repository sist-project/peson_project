package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MartMapper;
import java.util.*;
import com.sist.vo.*;
@Repository
public class MartDAO {
	@Autowired
	private MartMapper mapper;
	
	public List<MartVO> martAllData()
	{

		return mapper.martAllData();
	}
	public List<MartVO> martAllData1(int no)
	{
		return mapper.martAllData1(no);
	}
	public MartVO martDetailData(String cno)
	{
		return mapper.martDetailData(cno);
	}
	

}
