package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.RoomMapper;
import com.sist.vo.Room_categoryVO;
import com.sist.vo.Room_furnitureVO;

@Repository
public class RoomDAO {
	@Autowired
	private RoomMapper mapper;
	
	public List<Room_categoryVO> Room_categoryData(){
		return mapper.Room_categoryData();
	}
	
	public List<Room_furnitureVO> Room_furnitureData(int cateno){
		return mapper.Room_furnitureData(cateno);
	}
}
