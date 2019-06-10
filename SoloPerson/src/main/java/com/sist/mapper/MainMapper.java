package com.sist.mapper;

import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.GenderAgeVO;

public interface MainMapper {
	
	@Select("SELECT * FROM genderAgeTotal WHERE city=#{city}")
	public List<GenderAgeVO> genderData(String city);
}
