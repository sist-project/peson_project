package com.sist.solo;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MainDAO;
import com.sist.vo.GenderAgeVO;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO maindao;
	
	@RequestMapping("main/main.do")
	public String mainController() {
		String[] city = {"서울특별시", "부산광역시" ,"대구광역시", "인천광역시" ,"광주광역시", 
					     "대전광역시", "울산광역시", "경기도" ,"충청북도", "충청남도", "전라북도", 
					     "전라남도", "경상남도", "경상북도", "제주특별자치도"};
	
		return "main/main";
	}
	
}
