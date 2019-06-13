package com.sist.dao;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.ConsumMapper;
import com.sist.vo.ConsumVO;
@Repository
public class ConsumDAO {
	@Autowired
	private ConsumMapper mapper;
	
	public List<ConsumVO> consumAllData()
	{
		return mapper.consumAllData();
	}
}
