package com.sist.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import com.sist.vo.CardVO;

public interface CardMapper {

	@Select("SELECT * from card WHERE card='�ſ�ī��'")
	public List<CardVO> cardListData();
	
	@Select("SELECT * from card WHERE card='üũī��'")
	public List<CardVO> checkcardListData();
	
	@Select("SELECT * from card WHERE cno=#{cno}")
	public CardVO cardDetailData(int cno);
	
	@Select("SELECT * from card WHERE vno LIKE 's%' ORDER BY cno")
	public List<CardVO> cardSingleListData();
	
	@Select("SELECT * from card WHERE vno LIKE 'm%' ORDER BY cno")
	public List<CardVO> cardMartListData();
	
	@Select("SELECT * from card WHERE vno LIKE 'o%' ORDER BY cno")
	public List<CardVO> cardShoppingListData();
	
	@Select("SELECT * from card WHERE card='üũī��' AND rank>0 AND rank<6 ORDER BY rank")
	public List<CardVO> checkcardChartListData();
	
	@Select("SELECT * from card WHERE card='�ſ�ī��' AND rank>0 AND rank<6 ORDER BY rank")
	public List<CardVO> creditcardChartListData();
	
}
