package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;
import java.util.*;
@Controller
public class MeetController {
	@Autowired
	private MeetDAO dao;
	
	@RequestMapping("meet/meet_main.do")
	public String meetController(String page, Model model) {
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=9;
		
		int start=(curpage*rowSize)-(rowSize-1);
		int end=(curpage*rowSize);
		
	    Map map=new HashMap();
	    map.put("start",start);
	    map.put("end",end);
	    
	    int totalpage=dao.meetTotalPage();
	    List<MeetVO> list=dao.meetListData(map);
	    
	    final int BLOCK=5;
	    int allPage=totalpage;
	    int startPage=((curpage-1)/BLOCK*BLOCK)+1;	    
	    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	    if(endPage>allPage)
	    	endPage=allPage;
	    	    
	    model.addAttribute("list",list);
	    model.addAttribute("BLOCK",BLOCK);
	    model.addAttribute("startPage",startPage);
	    model.addAttribute("endPage",endPage);
	    model.addAttribute("allPage",allPage);
	    model.addAttribute("curpage",curpage);
	    model.addAttribute("page",page);
	    model.addAttribute("meetList_jsp","meetList.jsp");
	    
		return "meet/meet_main";
	}
	
	@RequestMapping("meet/mapFind.do")
	public String meet_mapFind(String no,Model model){
		String[] guList = { "��ü", "����", "��õ", "����", "����", "������", "��õ",
				"����", "���빮", "����", "����", "����", "�߱�", "���", "����", "����",
				"����", "����", "���빮", "����", "����", "���", "�߶�", "����", "����",
				"����" };
		String gu=null;
		if(no!=null)
			gu=guList[Integer.parseInt(no)];
		Map map=new HashMap();
		map.put("gu", gu);
		
		List<MeetVO> list=dao.meetmapFind(map);
		
		model.addAttribute("list",list);
		model.addAttribute("count",list.size());
		
		return "meet/meetList";
	}
	
	@RequestMapping("meet/meet_detail.do")
	public String meet_detail(String mno,Model model)
	{
		MeetVO vo=dao.meetDetailData(mno);
		
		model.addAttribute("vo",vo);
		
		return "meet/meet_detail";
	}
}
