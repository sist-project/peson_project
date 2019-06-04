package com.sist.solo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ConsumController {
	
	@RequestMapping("consum/consum.do")
	public String mainController() {
		
		return "consum/consum";
	}
	
}
