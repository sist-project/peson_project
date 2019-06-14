package com.sist.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Select;
import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO1;
import com.sist.vo.SidoPercentVO;

public interface MainMapper {
	
	@Select("SELECT * FROM genderAgeTotal WHERE city=#{city} AND age != '합계' ORDER BY no")
	public List<GenderAgeVO> genderData(String city);
	
	@Select("SELECT DISTINCT(col1) FROM totalConsumption1")
	public List<String> consumptionName();
	
	@Select("SELECT * FROM totalConsumption1 WHERE col1=#{col1}")
	public List<PersonalConsumptionVO1> consumptionData1(String name);
	
	@Select("SELECT * FROM sidoPercent WHERE si='전국'")
	public SidoPercentVO southKorea();
		
	@Select("SELECT * from sidoPercent WHERE si=#{si} ORDER BY no")
	public List<SidoPercentVO> southKoreaPercent(String si);
	
}
