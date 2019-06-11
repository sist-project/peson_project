package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;
import org.apache.ibatis.annotations.Select;
/*
 * SELECT A.*
		FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rownum as num
		FROM (SELECT mno,thumbnail,title,subtitle,price,rate
		FROM meet))A
		WHERE num BETWEEN #{start} AND #{end}
 */
public interface MeetMapper {
	//����Ʈ
	@Select("SELECT A.* "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rownum as num "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate FROM meet))A "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<MeetVO> meetListData(Map map);
	
	//��������
	@Select("SELECT CEIL(COUNT(*)/9.0) FROM meet")
	public int meetTotalPage();
		
	//���� �˻�
	@Select("SELECT * FROM meet "			
			+ "WHERE loc LIKE '%'||#{gu}||'%'")
	public List<MeetVO> meetmapFind(Map map);	
}
