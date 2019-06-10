package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.Room_categoryMapper;
import com.sist.vo.Room_categoryVO;

@Repository
public class RoomDAO {
	@Autowired
	private Room_categoryMapper mapper;
	
	public List<Room_categoryVO> Room_categoryData(){
		return mapper.Room_categoryData();
	}
}
