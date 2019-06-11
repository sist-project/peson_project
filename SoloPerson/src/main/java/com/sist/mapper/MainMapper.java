package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.GenderAgeVO;

public interface MainMapper {
	
	@Select("SELECT DISTINCT city FROM genderAgeTotal")
	public List<String> cityList();
	
	@Select("SELECT * FROM genderAgeTotal WHERE city=#{city} AND age != 'гу╟Х' ORDER BY no")
	public List<GenderAgeVO> genderData(String city);
}
