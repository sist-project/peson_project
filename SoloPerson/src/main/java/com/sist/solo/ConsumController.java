package com.sist.solo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.ConsumDAO;
import com.sist.vo.ConsumVO;

@Controller
public class ConsumController {
	@Autowired
	private ConsumDAO dao;
	
	@RequestMapping("consum/consum.do")
	public String mainController(Model model) 
	{
		List<ConsumVO> list=dao.consumAllData();
		model.addAttribute("list", list);
		return "consum/consum";
	}
	
}
