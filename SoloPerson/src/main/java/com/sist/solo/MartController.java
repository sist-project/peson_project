package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.vo.*;
import com.sist.dao.*;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.*;

@Controller
public class MartController {
	@Autowired
	private MartDAO dao;

	@RequestMapping("mart/mart.do")
	public String martController(String no,String yno, Model model) {

		List<MartVO> list = new ArrayList<MartVO>();
		List<Con_youtubeVO> clist =new ArrayList<Con_youtubeVO>();
		
		if (no == null) 
			no="1";
			
		
		if(no=="1")
		{
			list = dao.martAllData1(Integer.parseInt(no));
		}
		else if(no=="2")
		{
			list = dao.martAllData1(Integer.parseInt(no));
		}
		else if(no=="3")
		{
			list = dao.martAllData1(Integer.parseInt(no));
		}
		else
			list = dao.martAllData1(Integer.parseInt(no));
			
			
			

	
			
			clist = dao.youAllData();
			

		model.addAttribute("list", list);
		model.addAttribute("mList","mart_list.jsp");
		model.addAttribute("clist",clist);
		
		return "mart/mart";
	}

	@RequestMapping("mart/mart_detail.do")
	public String mart_detail(String cno, Model model) {
		MartVO vo = dao.martDetailData(cno);
		model.addAttribute("vo", vo);
		return "mart/mart_detail";
	}
	
	@RequestMapping("mart/youtube.do")
	public String youtube(int yno, Model model) {
		List<Con_youtubeVO> clist = dao.youAllData1(yno);
		model.addAttribute("clist", clist);
		
		return "mart/ajax/youtube";
	}

}
