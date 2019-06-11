package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.Visit_FoodDAO;
import com.sist.vo.FoodVO;
import com.sist.vo.VisitVO;

import java.util.*;
@Controller
public class Visit_FoodController {
	@Autowired
	private Visit_FoodDAO dao;
	
	
	@RequestMapping("visit_food/visitFood.do")
	public String visit_food_data(Model model)
	{
		List<VisitVO> vList=dao.visitAllData();
		model.addAttribute("vList", vList);
		
		List<FoodVO> fList=dao.foodAllData();
		model.addAttribute("fList", fList);
		return "visit_food/visit_food";
	}
	
	@RequestMapping("visit_food/detail.do")
	public String visit_detail(int vno,Model model)
	{
		VisitVO vo=dao.visitDetailData(vno);
		model.addAttribute("vo", vo);
		
		
		
		return "visit_food/detail";
	}
	
	@RequestMapping("visit_food/detail1.do")
	public String food_detail(int fno,Model model)
	{
		FoodVO vo=dao.foodDeailData(fno);
		model.addAttribute("vo", vo);
		return "visit_food/detail1";
	}
	
}




