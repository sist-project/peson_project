package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;
import org.apache.ibatis.annotations.Select;

public interface MeetMapper {
	//리스트
	@Select("SELECT A.* "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rcount,rownum as num "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rcount FROM meet))A "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<MeetVO> meetListData(Map map);
	
	//총페이지
	@Select("SELECT CEIL(COUNT(*)/9.0) FROM meet")
	public int meetTotalPage();
		
	//지도 검색
	@Select("SELECT * FROM meet "			
			+ "WHERE loc LIKE '%'||#{gu}||'%'")
	public List<MeetVO> meetmapFind(Map map);
	
	//상세보기
	@Select("SELECT * FROM meet WHERE mno=#{mno}")
	public MeetVO meetDetailData(String mno);
}
