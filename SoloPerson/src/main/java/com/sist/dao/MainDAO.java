package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.sist.mapper.MainMapper;
import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO;

@Repository
public class MainDAO {

	@Autowired
	private MainMapper mapper;
	
	public List<String> cityList() {
		return mapper.cityList();
	}
	
	public List<GenderAgeVO> genderData(String city) {
		return mapper.genderData(city);
	}
	
	public List<PersonalConsumptionVO> consumptionData() {
		return mapper.consumptionData();
	}
	
}
