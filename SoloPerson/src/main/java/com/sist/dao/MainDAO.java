package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.MainMapper;
import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO1;
import com.sist.vo.SidoPercentVO;

@Repository
public class MainDAO {

	@Autowired
	private MainMapper mapper;
	
	public List<GenderAgeVO> genderData(String city) {
		return mapper.genderData(city);
	}
	
	public List<String> consumptionName() {
		return mapper.consumptionName();
	}
	
	public List<PersonalConsumptionVO1> consumptionData1(String name) {
		return mapper.consumptionData1(name);
	}
	
	public SidoPercentVO southKorea() {
		return mapper.southKorea();
	}
	
	public List<SidoPercentVO> southKoreaPercent(String si) {
		return mapper.southKoreaPercent(si);
	}
	
}
