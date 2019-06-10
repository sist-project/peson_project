package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;

public interface RoomMapper {
	@Select("SELECT * FROM room_category ORDER BY cateno")
	public List<Room_categoryVO> Room_categoryData();
	
	@Select("SELECT * from room_furniture WHERE cateno = #{cateno}")
	public List<Room_furnitureVO> Room_furnitureData(int cateno);
}
