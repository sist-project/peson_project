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
	public List<Meet_ReplyVO> meet_replyAllData(int mno)
	{
		List<Meet_ReplyVO> rList=new ArrayList<Meet_ReplyVO>();
		
		Map map=new HashMap();
		map.put("mno", mno);
		
		getSqlSession().update("meet_replyAllData",map);
		rList=(List<Meet_ReplyVO>) map.get("pResult");
		
		return rList;
	}	
	
	//��� �߰�
	public void meet_replyInsertData(Meet_ReplyVO vo)
	{		
		Map map=new HashMap();
		map.put("prno", vo.getRno());
		map.put("pname", vo.getName());
		map.put("pmsg", vo.getMsg());
		
		getSqlSession().update("meet_replyInsertData",map);
		
	}
	
	//��û��
	public String meetReserveDate(String mno)
	{
		return mapper.meetReserveDate(mno);
	}
	
	//���� ���� �ð�
	public String meetReserveTime(String dno)
	{
		return mapper.meetReserveTime(dno);
	}
	
	public String meetTimeData(int tno)
	{
		return mapper.meetTimeData(tno);
	}
		
	//��û
	//��û�� �� Ȯ��
	public String meetReserveCount(Map map)
	{
		return mapper.meetReserveCount(map);
	}
	//��û insert
	public void meetReserveInsert(Meet_ReserveVO vo)
	{
		mapper.meetReserveInsert(vo);
	}
	//��û�ڼ� ����
	public void meetReserveIncrement(Map map)
	{
		mapper.meetReserveIncrement(map);
	}
	
}
