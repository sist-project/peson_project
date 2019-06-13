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
		  // ���� ��� ���� �б�
		  VisitReplyVO pvo=mapper.replyParentData(pno);
		  // step���� 
		  mapper.replyStepIncrement(pvo);
		  // ��� �߰� 
		  vo.setGroup_id(pvo.getGroup_id());
		  vo.setGroup_step(pvo.getGroup_step()+1);
		  vo.setGroup_tab(pvo.getGroup_tab()+1);
		  vo.setRoot(pno);
		  mapper.replyReInsert(vo);
		  // depth���� 
		  mapper.replyDepthIncrement(pno);
	  }
	  
	  public boolean replyUpdate(VisitReplyVO vo)
	  {
		  boolean bCheck=false;
		  String db_pwd=mapper.replyGetPwd(vo.getNo());
		  if(db_pwd.equals(vo.getPwd()))
		  {
			  bCheck=true;
			  // ���� 
			  mapper.replyUpdate(vo);
		  }
		  return bCheck;
	  }
	  
	  @Transactional(rollbackFor=Exception.class) // rollbackó��(��ü SQL�� ���)
	  public boolean replyDelete(int no,String pwd)
	  { 
		   boolean bCheck=false;
		   // ��й�ȣ 
		   String db_pwd=mapper.replyGetPwd(no);
		   if(db_pwd.equals(pwd))
		   {
			   bCheck=true;
			   VisitReplyVO vo=mapper.replyDeleteData(no);//depth,root
			   if(vo.getDepth()==0)
			   {
				   mapper.replyDelete(no);// ����� ���� ���� 
			   }
			   else
			   {
				   VisitReplyVO pvo=new VisitReplyVO();
				   pvo.setNo(no);
				   pvo.setMsg("<font color=red>�����ڰ� ������ ����Դϴ�.</font>");
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
		  // ���� ��� ���� �б�
		  FoodReplyVO pvo=mapper.foodReplyParentData(pno);
		  // step���� 
		  mapper.foodReplyStepIncrement(pvo);
		  // ��� �߰� 
		  vo.setGroup_id(pvo.getGroup_id());
		  vo.setGroup_step(pvo.getGroup_step()+1);
		  vo.setGroup_tab(pvo.getGroup_tab()+1);
		  vo.setRoot(pno);
		  mapper.foodReplyReInsert(vo);
		  // depth���� 
		  mapper.foodReplyDepthIncrement(pno);
	  }
	  
	  public boolean foodReplyUpdate(FoodReplyVO vo)
	  {
		  boolean bCheck=false;
		  String db_pwd=mapper.foodReplyGetPwd(vo.getNo());
		  if(db_pwd.equals(vo.getPwd()))
		  {
			  bCheck=true;
			  // ���� 
			  mapper.foodReplyUpdate(vo);
		  }
		  return bCheck;
	  }
	  
	  @Transactional(rollbackFor=Exception.class) // rollbackó��(��ü SQL�� ���)
	  public boolean foodReplyDelete(int no,String pwd)
	  { 
		   boolean bCheck=false;
		   // ��й�ȣ 
		   String db_pwd=mapper.foodReplyGetPwd(no);
		   if(db_pwd.equals(pwd))
		   {
			   bCheck=true;
			   FoodReplyVO vo=mapper.foodReplyDeleteData(no);//depth,root
			   if(vo.getDepth()==0)
			   {
				   mapper.foodReplyDelete(no);// ����� ���� ���� 
			   }
			   else
			   {
				   FoodReplyVO pvo=new FoodReplyVO();
				   pvo.setNo(no);
				   pvo.setMsg("<font color=red>�����ڰ� ������ ����Դϴ�.</font>");
				   mapper.foodReplyDeleteUpdate(pvo);
			   }
			   
			   mapper.foodReplyDepthDecrement(vo.getRoot());
		   }
		   
		   return bCheck;
	  }
	
}
