package com.sist.solo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("cmmn/layouts.do")
	public String mainController() {
		
		return "main/main";
	}
	
}