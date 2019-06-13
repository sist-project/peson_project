package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO;
import com.sist.vo.PersonalConsumptionVO1;

public interface MainMapper {
	
	@Select("SELECT * FROM genderAgeTotal WHERE city=#{city} AND age != '합계' ORDER BY no")
	public List<GenderAgeVO> genderData(String city);
	
	@Select("SELECT * FROM totalConsumption WHERE year='2018'")
	public List<PersonalConsumptionVO> consumptionData();
	
	@Select("SELECT * FROM totalConsumption1 WHERE col1='식료품, 비주류음료'")
	public List<PersonalConsumptionVO1> consumptionData1();
	
}
