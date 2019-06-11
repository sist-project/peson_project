package com.sist.dao;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.vo.*;
import com.sist.mapper.*;

@Repository
public class MeetDAO {
	@Autowired
	private MeetMapper mapper;
	
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
}
