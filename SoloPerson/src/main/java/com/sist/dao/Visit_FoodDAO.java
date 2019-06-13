package com.sist.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.sist.mapper.Visit_FoodMapper;
import com.sist.vo.*;

import java.util.*;
@Repository
public class Visit_FoodDAO {
	@Autowired
	private Visit_FoodMapper mapper;
	
	public List<VisitVO> visitAllData()
	{
		return mapper.visitAllData();
	}
	
	public VisitVO visitDetailData(int no)
	{
		mapper.hitIncrement(no);
		return mapper.visitDetailData(no);
	}
	
	public List<FoodVO> foodAllData()
	{
		return mapper.foodAllData();
	}
	
	public FoodVO foodDetailData(int fno)
	{
		mapper.foodHitIncrement(fno);
		return mapper.foodDetailData(fno);
	}
	
	//visitReply ==========================================
	 public List<VisitReplyVO> replyAllData(int vno)
	  {
		  return mapper.replyAllData(vno);
	  }
	  
	  public void replyInsert(VisitReplyVO vo)
	  {
		  mapper.replyInsert(vo);
	  }
	  
	  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	  public void replyReInsert(int pno,VisitReplyVO vo)
	  {
		  // 상위 댓글 정보 읽기
		  VisitReplyVO pvo=mapper.replyParentData(pno);
		  // step증가 
		  mapper.replyStepIncrement(pvo);
		  // 댓글 추가 
		  vo.setGroup_id(pvo.getGroup_id());
		  vo.setGroup_step(pvo.getGroup_step()+1);
		  vo.setGroup_tab(pvo.getGroup_tab()+1);
		  vo.setRoot(pno);
		  mapper.replyReInsert(vo);
		  // depth증가 
		  mapper.replyDepthIncrement(pno);
	  }
	  
	  public boolean replyUpdate(VisitReplyVO vo)
	  {
		  boolean bCheck=false;
		  String db_pwd=mapper.replyGetPwd(vo.getNo());
		  if(db_pwd.equals(vo.getPwd()))
		  {
			  bCheck=true;
			  // 수정 
			  mapper.replyUpdate(vo);
		  }
		  return bCheck;
	  }
	  
	  @Transactional(rollbackFor=Exception.class) // rollback처리(전체 SQL을 취소)
	  public boolean replyDelete(int no,String pwd)
	  { 
		   boolean bCheck=false;
		   // 비밀번호 
		   String db_pwd=mapper.replyGetPwd(no);
		   if(db_pwd.equals(pwd))
		   {
			   bCheck=true;
			   VisitReplyVO vo=mapper.replyDeleteData(no);//depth,root
			   if(vo.getDepth()==0)
			   {
				   mapper.replyDelete(no);// 댓글이 없는 상태 
			   }
			   else
			   {
				   VisitReplyVO pvo=new VisitReplyVO();
				   pvo.setNo(no);
				   pvo.setMsg("<font color=red>관리자가 삭제한 댓글입니다.</font>");
				   mapper.replyDeleteUpdate(pvo);
			   }
			   
			   mapper.replyDepthDecrement(vo.getRoot());
		   }
		   
		   return bCheck;
	  }
//	  food=================================================================
	  public List<FoodReplyVO> foodReplyAllData(int vno)
	  {
		  return mapper.foodReplyAllData(vno);
	  }
	  
	  public void foodReplyInsert(FoodReplyVO vo)
	  {
		  mapper.foodReplyInsert(vo);
	  }
	  
	  @Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)
	  public void foodReplyReInsert(int pno,FoodReplyVO vo)
	  {
		  // 상위 댓글 정보 읽기
		  FoodReplyVO pvo=mapper.foodReplyParentData(pno);
		  // step증가 
		  mapper.foodReplyStepIncrement(pvo);
		  // 댓글 추가 
		  vo.setGroup_id(pvo.getGroup_id());
		  vo.setGroup_step(pvo.getGroup_step()+1);
		  vo.setGroup_tab(pvo.getGroup_tab()+1);
		  vo.setRoot(pno);
		  mapper.foodReplyReInsert(vo);
		  // depth증가 
		  mapper.foodReplyDepthIncrement(pno);
	  }
	  
	  public boolean foodReplyUpdate(FoodReplyVO vo)
	  {
		  boolean bCheck=false;
		  String db_pwd=mapper.foodReplyGetPwd(vo.getNo());
		  if(db_pwd.equals(vo.getPwd()))
		  {
			  bCheck=true;
			  // 수정 
			  mapper.foodReplyUpdate(vo);
		  }
		  return bCheck;
	  }
	  
	  @Transactional(rollbackFor=Exception.class) // rollback처리(전체 SQL을 취소)
	  public boolean foodReplyDelete(int no,String pwd)
	  { 
		   boolean bCheck=false;
		   // 비밀번호 
		   String db_pwd=mapper.foodReplyGetPwd(no);
		   if(db_pwd.equals(pwd))
		   {
			   bCheck=true;
			   FoodReplyVO vo=mapper.foodReplyDeleteData(no);//depth,root
			   if(vo.getDepth()==0)
			   {
				   mapper.foodReplyDelete(no);// 댓글이 없는 상태 
			   }
			   else
			   {
				   FoodReplyVO pvo=new FoodReplyVO();
				   pvo.setNo(no);
				   pvo.setMsg("<font color=red>관리자가 삭제한 댓글입니다.</font>");
				   mapper.foodReplyDeleteUpdate(pvo);
			   }
			   
			   mapper.foodReplyDepthDecrement(vo.getRoot());
		   }
		   
		   return bCheck;
	  }
	
}
