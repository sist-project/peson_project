package com.sist.mapper;
import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MeetMapper {
	//����Ʈ
	@Select("SELECT A.* "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rcount,rownum as num "
			+ "FROM (SELECT mno,thumbnail,title,subtitle,price,rate,rcount FROM meet))A "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<MeetVO> meetListData(Map map);
	
	//��������
	@Select("SELECT CEIL(COUNT(*)/9.0) FROM meet")
	public int meetTotalPage();
		
	//���� �˻�
	@Select("SELECT * FROM meet "			
			+ "WHERE loc LIKE '%'||#{gu}||'%'")
	public List<MeetVO> meetmapFind(Map map);
	
	//�󼼺���
	@Select("SELECT * FROM meet WHERE mno=#{mno}")
	public MeetVO meetDetailData(String mno);
	
	//��û��
	@Select("SELECT res_date FROM meet WHERE mno=#{mno}")
	public String meetReserveDate(String mno);	
	
	//���� ���� �ð�
	@Select("SELECT time FROM meet_reserveDate WHERE dno=#{dno}")
	public String meetReserveTime(String dno);	
	
	@Select("SELECT time FROM meet_reserveTime WHERE tno=#{tno}")
	public String meetTimeData(int tno);
	
	
	//��û�� �� Ȯ��
	@Select("SELECT COUNT(*) FROM meet_reserve WHERE rmno=#{rmno} AND rdno=#{rdno}")
	public int meetReserveCount(Map map);
	//��û insert
	@Insert("INSERT INTO meet_reserve VALUES(#{rmno},#{rdno},#{rtitle},#{rdate},#{rtime},0,5)")
	public void meetReserveInsert(Meet_ReserveVO vo);
	//��û�ڼ� ����
	@Update("UPDATE meet_reserve SET nowInwon=nowInwon+1 WHERE rmno=#{rmno} AND rdno=#{rdno}")
	public void meetReserveIncrement(Map map);
	
}
