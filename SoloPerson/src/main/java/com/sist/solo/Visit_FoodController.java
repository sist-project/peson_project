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
//	°ü±¤Áö,À½½Ä ¸®½ºÆ®
	@RequestMapping("visit_food/visitFood.do")
	public String visit_food_data(Model model)
	{
		List<VisitVO> vList=dao.visitAllData();
		model.addAttribute("vList", vList);
		
		List<FoodVO> fList=dao.foodAllData();
		model.addAttribute("fList", fList);
		return "visit_food/visit_food";
	}
	
//	°ü±¤Áö »ó¼¼º¸±â
	@RequestMapping("visit_food/detail.do")
	public String visit_detail(int no,Model model)
	{
		System.out.println(no);
		VisitVO vo=dao.visitDetailData(no);
//		System.out.println(vo.getHit());
		model.addAttribute("vo", vo);
		
		//°ü±¤Áö
		List<VisitReplyVO> rList=dao.replyAllData(no);
		  
		model.addAttribute("rList", rList);
		//System.out.println(rList.size());
		model.addAttribute("count", rList.size());
		
		//È¥¼ú,È¥¹ä
		
		return "visit_food/detail";
	}
	
//	°ü±¤Áö ´ñ±Û
	@RequestMapping("visit_food/reply_insert.do")
	  public String reply_insert(VisitReplyVO vo)
	  {
		  dao.replyInsert(vo);
		  return "redirect:../visit_food/detail.do?no="+vo.getVno();
	  }
	
//	  °ü±¤Áö ´ë´ñ±Û
	  @RequestMapping("visit_food/reply_reply_insert.do")
	  public String reply_reply_insert(VisitReplyVO vo)
	  {
		  // µ¥ÀÌÅÍ º£ÀÌ½º ¿¬°á => group_id,group_step,group_tab,root,depth
		  dao.replyReInsert(vo.getNo(), vo);
		  return "redirect:../visit_food/detail.do?no="+vo.getVno();
	  }
	  
//	  °ü±¤Áö ´ñ±Û¼öÁ¤
	  @RequestMapping("visit_food/reply_update.do")
	  public String reply_update(VisitReplyVO vo,Model model)
	  {
		  // DB
		  boolean bCheck=dao.replyUpdate(vo);
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_update";
	  }
	  
//	  °ü±¤Áö ´ñ±Û »èÁ¦
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
		
		//°ü±¤Áö
		List<FoodReplyVO> rList=dao.foodReplyAllData(no);
		System.out.println(no);
		model.addAttribute("rList", rList);
		System.out.println(vo.getHit());
		model.addAttribute("count", rList.size());
		return "visit_food/detail1";
	}
	
//	food ´ñ±Û
	@RequestMapping("visit_food/reply_insert1.do")
	  public String food_reply_insert(FoodReplyVO vo)
	  {
		  dao.foodReplyInsert(vo);
		  return "redirect:../visit_food/detail1.do?no="+vo.getVno();
	  }
	
//	  food ´ë´ñ±Û
	  @RequestMapping("visit_food/reply_reply_insert1.do")
	  public String food_reply_reply_insert(FoodReplyVO vo)
	  {
		  // µ¥ÀÌÅÍ º£ÀÌ½º ¿¬°á => group_id,group_step,group_tab,root,depth
		  dao.foodReplyReInsert(vo.getNo(), vo);
		  return "redirect:../visit_food/detail1.do?no="+vo.getVno();
	  }
	  
//	  food ´ñ±Û¼öÁ¤
	  @RequestMapping("visit_food/reply_update1.do")
	  public String food_reply_update(FoodReplyVO vo,Model model)
	  {
		  // DB
		  boolean bCheck=dao.foodReplyUpdate(vo);
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_update1";
	  }
	  
//	  food ´ñ±Û »èÁ¦
	  @RequestMapping("visit_food/reply_delete1.do")
	  public String food_reply_delete(FoodReplyVO vo,Model model)
	  {
		  boolean bCheck=dao.foodReplyDelete(vo.getNo(), vo.getPwd());
		  model.addAttribute("bCheck", bCheck);
		  model.addAttribute("vno", vo.getVno());
		  return "visit_food/reply_delete";
	  }
	
}




