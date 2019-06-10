package com.sist.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;

public interface Room_categoryMapper {
	@Select("SELECT * FROM room_category ORDER BY cateno")
	public List<Room_categoryVO> Room_categoryData();
}
