package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.vo.*;
public interface MartMapper {
	
	@Select("SELECT * FROM convenience")
	public List<MartVO> martAllData();
	
	@Select("SELECT * FROM convenience WHERE no=#{no}")
	public List<MartVO> martAllData1(int no);
	
	@Select("SELECT * FROM convenience WHERE cno=#{cno}")
	public MartVO martDetailData(String cno);
	
	@Select("SELECT * FROM con_youtube")
	public List<Con_youtubeVO> youAllData();
	
	@Select("SELECT * FROM con_youtube WHERE yno=#{yno}")
	public List<Con_youtubeVO> youAllData1(int yno);
	

}
