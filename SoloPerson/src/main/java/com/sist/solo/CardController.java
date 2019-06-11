package com.sist.solo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CardController {
	
		@RequestMapping("card/card.do")
		public String cardController() {
			
			return "card/card";
		}
		
}
