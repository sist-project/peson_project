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
}
