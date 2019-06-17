package com.sist.solo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.CardDAO;
import com.sist.vo.CardVO;
import com.sist.vo.Room_furnitureVO;


@Controller
public class CardController {
	
	@Autowired
	private CardDAO dao;
	
		@RequestMapping("card/card.do")
		public String cardController(Model model) {
			List<CardVO> cardList = dao.cardListData();
			List<CardVO> checkcardList=dao.checkcardListData();
			List<CardVO> checkcardChartList=dao.checkcardChartListData();
			List<CardVO> creditcardChartList=dao.creditcardChartListData();
		
			model.addAttribute("cardList", cardList);
			model.addAttribute("checkcardList", checkcardList);
			model.addAttribute("checkcardChartList", checkcardChartList);
			model.addAttribute("creditcardChartList", creditcardChartList);
			
			return "card/card";
		}
		
		@RequestMapping("card/single.do")
		public String creditcardController(Model model) {
			
			List<CardVO> cardSingleList = dao.cardSingleListData();
			
			model.addAttribute("cardSingleList", cardSingleList);			
			
			return "card/single";
		}
		
		@RequestMapping("card/detail.do")
		public String cardDetailController(int cno, Model model) {
			  
			// DAO 연결 
			  CardVO vo=dao.cardDetailData(cno);
			  model.addAttribute("vo", vo);
		
			return "card/detail";
		}
		
		@RequestMapping("card/detail2.do")
		public String cardDetail2Controller(int cno, Model model) {
			  
			// DAO 연결 
			  CardVO vo=dao.cardDetailData(cno);
			  model.addAttribute("vo", vo);
		
			return "card/detail2";
		}
		
		@RequestMapping("card/shopping.do")
		public String shoppingCardController(Model model) {
			
            List<CardVO> cardShoppingtList = dao.cardShoppingListData();
			
			model.addAttribute("cardShoppingtList", cardShoppingtList);	
			return "card/shopping";
		}
		
		@RequestMapping("card/mart.do")
		public String martCardController(Model model) {
			
			List<CardVO> cardMartList = dao.cardMartListData();
			
			model.addAttribute("cardMartList", cardMartList);		
			return "card/mart";
		}
		
	
		
	
	
}
