package com.sist.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.mapper.RoomMapper;
import com.sist.vo.Meet_ReplyVO;
import com.sist.vo.Room_categoryVO;
import com.sist.vo.Room_furnitureVO;
import com.sist.vo.Room_replyVO;

@Repository
public class RoomDAO extends SqlSessionDaoSupport {
	@Autowired
	private RoomMapper mapper;

	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	public List<Room_categoryVO> Room_categoryData() {
		return mapper.Room_categoryData();
	}

	public List<Room_furnitureVO> Room_furnitureData(int cateno) {
		return mapper.Room_furnitureData(cateno);
	}

	// 댓글리스트(상세보기)
	public List<Room_replyVO> room_ReplyAllData(int pno) {
		List<Room_replyVO> replyList = new ArrayList<Room_replyVO>();

		Map map = new HashMap();
		map.put("pno", pno);

		getSqlSession().update("room_ReplyAllData", map);
		replyList = (List<Room_replyVO>) map.get("pResult");

		return replyList;
	}

	// 댓글 추가
	public void room_replyInsertData(Room_replyVO vo) {
		Map map = new HashMap();
		map.put("ppno", vo.getPno());
		map.put("pname", vo.getName());
		map.put("pcontent", vo.getContent());
		map.put("ppwd", vo.getPwd());

		getSqlSession().update("room_replyInsertData", map);

	}
}
