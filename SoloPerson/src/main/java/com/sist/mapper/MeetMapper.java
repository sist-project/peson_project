package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	
	//신청일
	@Select("SELECT res_date FROM meet WHERE mno=#{mno}")
	public String meetReserveDate(String mno);	
	
	//예약 가능 시간
	@Select("SELECT time FROM meet_reserveDate WHERE dno=#{dno}")
	public String meetReserveTime(String dno);	
	
	@Select("SELECT time FROM meet_reserveTime WHERE tno=#{tno}")
	public String meetTimeData(int tno);
	
	
	//신청자 수 확인
	@Select("SELECT COUNT(*) FROM meet_reserve WHERE rmno=#{rmno} AND rdno=#{rdno}")
	public int meetReserveCount(Map map);
	//신청 insert
	@Insert("INSERT INTO meet_reserve VALUES(#{rmno},#{rdno},#{rtitle},#{rdate},#{rtime},0,5)")
	public void meetReserveInsert(Meet_ReserveVO vo);
	//신청자수 증가
	@Update("UPDATE meet_reserve SET nowInwon=nowInwon+1 WHERE rmno=#{rmno} AND rdno=#{rdno}")
	public void meetReserveIncrement(Map map);
	
}
