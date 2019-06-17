package com.sist.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.sist.mapper.CardMapper;
import com.sist.vo.CardVO;


@Repository
public class CardDAO {

	@Autowired
	private CardMapper mapper;
	
	public List<CardVO> cardListData(){
			
			return mapper.cardListData();
		
		}
	
	public List<CardVO> checkcardListData(){
		
		return mapper.checkcardListData();
	
	}
	
	public CardVO cardDetailData(int cno){
		
		return mapper.cardDetailData(cno);
	
	}
	
	public List<CardVO> cardSingleListData(){
		
		return mapper.cardSingleListData();
	
	}
	
		public List<CardVO> cardMartListData(){
		
		return mapper.cardMartListData();
	
	}
		
		public List<CardVO> cardShoppingListData(){
			
		return mapper.cardShoppingListData();
	
	}
	
		public List<CardVO> checkcardChartListData(){
			
			return mapper.checkcardChartListData();
		
		}
	
		public List<CardVO> creditcardChartListData(){
			
			return mapper.creditcardChartListData();
		
		}

}
