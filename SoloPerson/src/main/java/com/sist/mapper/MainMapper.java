package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO;

public interface MainMapper {
	
	@Select("SELECT * FROM genderAgeTotal WHERE city=#{city} AND age != 'гу╟Х' ORDER BY no")
	public List<GenderAgeVO> genderData(String city);
	
	@Select("SELECT * FROM totalConsumption WHERE year='2018'")
	public List<PersonalConsumptionVO> consumptionData();
	
}
