package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.vo.*;
import com.sist.dao.Visit_FoodDAO;
import com.sist.vo.FoodVO;
import com.sist.vo.VisitVO;

import java.util.*;
@Controller
public class Visit_FoodController {
	@Autowired
	private Visit_FoodDAO dao;
//	������,���� ����Ʈ
	@RequestMapping("visit_food/visitFood.do")
	public String visit_food_data(Model model)
	{
		List<VisitVO> vList=dao.visitAllData();
		model.addAttribute("vList", vList);
		
		List<FoodVO> fList=dao.foodAllData();
		model.addAttribute("fList", fList);
		return "visit_food/visit_food";
	}
	
//	������ �󼼺���
	@RequestMapping("visit_food/detail.do")
	public String visit_detail(int no,Model model)
	{
		System.out.println(no);
		VisitVO vo=dao.visitDetailData(no);
//		System.out.println(vo.getHit());
		model.addAttribute("vo", vo);
		
		//������
		List<VisitReplyVO> rList=dao.replyAllData(no);
		  
		model.addAttribute("rList", rList);
		//System.out.println(rList.size());
		model.addAttribute("count", rList.size());
		
		//ȥ��,ȥ��
		
		return "visit_food/detail";
	}
	
//	������ ���
	@RequestMapping("visit_food/reply_insert.do")
	  public String reply_insert(VisitReplyVO vo)
	  {
		  dao.replyInsert(vo);
		  return "redirect:../visit_food/detail.do?no="+vo.getVno();
	  }
	
//	  ������ ����
	  @RequestMapping("visit_food/reply_reply_insert.do")
	  public String reply_reply_insert(VisitReplyVO vo)
	  {
		  // ������ ���̽� ���� => group_id,group_step,group_tab,root,depth
		  dao.replyReInsert(vo.getNo(), vo);
		  return "redirect:../visit_food/detail.do?no="+vo.getVno();
	  }
	  
//	  ������ ��ۼ���
	  @RequestMapping("visit_food/reply_update.do")
	  public String reply_update(VisitReplyVO vo,Model model)
	  {
		  // DB
		  boolean bCheck=dao.replyUpdate(vo);
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_update";
	  }
	  
//	  ������ ��� ����
	  @RequestMapping("visit_food/reply_delete.do")
	  public String reply_delete(VisitReplyVO vo,Model model)
	  {
		  boolean bCheck=dao.replyDelete(vo.getNo(), vo.getPwd());
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_delete";
	  }
	
	  
	  
	
//	food========================================================================
	@RequestMapping("visit_food/detail1.do")
	public String food_detail(int no,Model model)
	{
		FoodVO vo=dao.foodDetailData(no);
		model.addAttribute("vo", vo);
		
		//������
		List<FoodReplyVO> rList=dao.foodReplyAllData(no);
		System.out.println(no);
		model.addAttribute("rList", rList);
		System.out.println(vo.getHit());
		model.addAttribute("count", rList.size());
		return "visit_food/detail1";
	}
	
//	food ���
	@RequestMapping("visit_food/reply_insert1.do")
	  public String food_reply_insert(FoodReplyVO vo)
	  {
		  dao.foodReplyInsert(vo);
		  return "redirect:../visit_food/detail1.do?no="+vo.getVno();
	  }
	
//	  food ����
	  @RequestMapping("visit_food/reply_reply_insert1.do")
	  public String food_reply_reply_insert(FoodReplyVO vo)
	  {
		  // ������ ���̽� ���� => group_id,group_step,group_tab,root,depth
		  dao.foodReplyReInsert(vo.getNo(), vo);
		  return "redirect:../visit_food/detail1.do?no="+vo.getVno();
	  }
	  
//	  food ��ۼ���
	  @RequestMapping("visit_food/reply_update1.do")
	  public String food_reply_update(FoodReplyVO vo,Model model)
	  {
		  // DB
		  boolean bCheck=dao.foodReplyUpdate(vo);
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_update1";
	  }
	  
//	  food ��� ����
	  @RequestMapping("visit_food/reply_delete1.do")
	  public String food_reply_delete(FoodReplyVO vo,Model model)
	  {
		  boolean bCheck=dao.foodReplyDelete(vo.getNo(), vo.getPwd());
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_delete";
	  }
	
}




