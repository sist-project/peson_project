package com.sist.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.*;
import com.sist.mapper.*;

@Repository
public class MeetDAO extends SqlSessionDaoSupport{
	@Autowired
	private MeetMapper mapper;
	
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	//리스트
	public List<MeetVO> meetListData(Map map)
	{
		return mapper.meetListData(map);
	}
	
	//총페이지
	public int meetTotalPage()
	{
		return mapper.meetTotalPage();
	}
	
	//지도 검색
	public List<MeetVO> meetmapFind(Map map)
	{
		return mapper.meetmapFind(map);
	}
	
	//상세보기
	public MeetVO meetDetailData(String mno)
	{
		return mapper.meetDetailData(mno);
	}
	
	//댓글리스트(상세보기)
	public List<Meet_ReplyVO> meet_replyAllData(int mno)
	{
		List<Meet_ReplyVO> rList=new ArrayList<Meet_ReplyVO>();
		
		Map map=new HashMap();
		map.put("mno", mno);
		
		getSqlSession().update("meet_replyAllData",map);
		rList=(List<Meet_ReplyVO>) map.get("pResult");
		
		return rList;
	}	
	
	//댓글 추가
	public void meet_replyInsertData(Meet_ReplyVO vo)
	{		
		Map map=new HashMap();
		map.put("prno", vo.getRno());
		map.put("pname", vo.getName());
		map.put("pmsg", vo.getMsg());
		
		getSqlSession().update("meet_replyInsertData",map);
		
	}
	
	//신청일
	public String meetReserveDate(String mno)
	{
		return mapper.meetReserveDate(mno);
	}
	
	//예약 가능 시간
	public String meetReserveTime(String dno)
	{
		return mapper.meetReserveTime(dno);
	}
	
	public String meetTimeData(int tno)
	{
		return mapper.meetTimeData(tno);
	}
		
	//신청
	//신청자 수 확인
	public String meetReserveCount(Map map)
	{
		return mapper.meetReserveCount(map);
	}
	//신청 insert
	public void meetReserveInsert(Meet_ReserveVO vo)
	{
		mapper.meetReserveInsert(vo);
	}
	//신청자수 증가
	public void meetReserveIncrement(Map map)
	{
		mapper.meetReserveIncrement(map);
	}
	
}
