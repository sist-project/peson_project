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

	//����Ʈ
	public List<MeetVO> meetListData(Map map)
	{
		return mapper.meetListData(map);
	}
	
	//��������
	public int meetTotalPage()
	{
		return mapper.meetTotalPage();
	}
	
	//���� �˻�
	public List<MeetVO> meetmapFind(Map map)
	{
		return mapper.meetmapFind(map);
	}
	
	//�󼼺���
	public MeetVO meetDetailData(String mno)
	{
		return mapper.meetDetailData(mno);
	}
	
	//��۸���Ʈ(�󼼺���)
	public List<Meet_ReplyVO> replyAllData(int mno)
	{
		List<Meet_ReplyVO> rList=new ArrayList<Meet_ReplyVO>();
		
		Map map=new HashMap();
		map.put("mno", mno);
		
		getSqlSession().update("replyAllData",map);
		rList=(List<Meet_ReplyVO>) map.get("pResult");
		
		return rList;
	}
	
	
	/*
	 * //���
	public List<BoardVO> boardAllData(int page)
	{
		List<BoardVO> list=new ArrayList<BoardVO>();
		int rowSize=10;
		int start=(page*rowSize)-(rowSize-1);
		int end=page*rowSize;
		Map map=new HashMap();
		map.put("pStart", start);
		map.put("pEnd", end);
		
		getSqlSession().update("boardAllData",map);
		
		list=(List<BoardVO>)map.get("pResult");
		
		return list;
	}
	 */
}
