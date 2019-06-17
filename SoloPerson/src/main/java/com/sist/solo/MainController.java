package com.sist.solo;

import java.util.ArrayList;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.MainDAO;
import com.sist.vo.GenderAgeVO;
import com.sist.vo.PersonalConsumptionVO1;
import com.sist.vo.SidoPercentVO;
import com.sist.vo.SouthKoreaJsonVO;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO dao;
	
	@RequestMapping("main/main.do")
	public String mainController(Model model) {
		// 시도별 분포
		String[] city = { "서울특별시", "부산광역시", "대구광역시", "인천광역시", "광주광역시", "대전광역시", "울산광역시", "경기도", "충청북도", "충청남도", "전라북도",
				"전라남도", "경상남도", "경상북도", "제주특별자치도" };
		List<GenderAgeVO> gList = dao.genderData(city[0]);

		JSONArray arr1 = new JSONArray();
		for (int i = 0; i < 15; i++) {
			JSONObject obj = new JSONObject();
			GenderAgeVO vo = gList.get(i);
			obj.put("age", vo.getAge());
			obj.put("total", vo.getTotal());
			obj.put("female", vo.getFemale());
			obj.put("male", vo.getMale());

			arr1.add(obj);
		}

		model.addAttribute("sidoName", city[0]);
		model.addAttribute("json1", arr1.toJSONString());

		
		// 개인 소비지출
		String[] color = { "#54a0ff", "#feca57", "#ff6b6b", "#48dbfb", "#1dd1a1", "#00d2d3", "#ff9ff3", "#5f27cd",
				"#c8d6e5", "#341f97" };
		List<String> nameList = dao.consumptionName();	// 지출 목록 이름
		
		List<PersonalConsumptionVO1> list = dao.consumptionData1(nameList.get(1));
		JSONArray arr2 = new JSONArray();
		int j = 0;
		for (PersonalConsumptionVO1 vo : list) {
			arr2.add(vo.getYear2018());
			j++;

			if (j > 9)
				break;

		}
		
		JSONArray colorJson = new JSONArray();
		for (int i = 0; i < arr2.size(); i++) {
			colorJson.add(color[i]);
		}
		
		JSONArray arrLabel = new JSONArray();
		j = 0;
		
		for (PersonalConsumptionVO1 vo : list) {
			arrLabel.add(vo.getCol2());
			j++;

			if (j > 9)
				break;

		}

		model.addAttribute("json2", arr2);
		model.addAttribute("colorJson", colorJson);
		model.addAttribute("arrLabel", arrLabel);
		model.addAttribute("consumptionName", nameList.get(1));
		
		// 전국 인구 비율 분포
		SidoPercentVO vo = dao.southKorea();
		
		model.addAttribute("siName", vo.getSi());
		model.addAttribute("guName", vo.getGu());
		model.addAttribute("get2016", vo.getYear2016());
		model.addAttribute("get2017", vo.getYear2017());
		
		return "main/main";
	}
	
	@RequestMapping("main/genderAjax.do")
	public String ajaxController1(Model model) {
		
		// 시도별 분포
		int num = (int)(Math.random()*15);
		
		String[] city = {"서울특별시", "부산광역시" ,"대구광역시", "인천광역시" ,"광주광역시", 
					     "대전광역시", "울산광역시", "경기도" ,"충청북도", "충청남도", "전라북도", 
					     "전라남도", "경상남도", "경상북도", "제주특별자치도"};
		List<GenderAgeVO> gList = dao.genderData(city[num]);
		
		JSONArray arr1=new JSONArray();
		for (int i = 0; i < 15; i++) {
			JSONObject obj = new JSONObject();
			GenderAgeVO vo = gList.get(i);
			obj.put("age", vo.getAge());
			obj.put("total", vo.getTotal());
			obj.put("female",vo.getFemale());
			obj.put("male", vo.getMale());
			
			arr1.add(obj);
		}

		model.addAttribute("sidoName", city[num]);
		model.addAttribute("json1", arr1.toJSONString());
			
		return "main/ajax/genderAjax";
	}
	
	@RequestMapping("main/consumptionAjax.do")
	public String ajaxController2(Model model) {
		List<String> nameList = dao.consumptionName();	// 지출 목록 이름
		int num = (int)(Math.random()*10);
		
		String[] color = { "#54a0ff", "#feca57", "#ff6b6b", "#48dbfb", "#1dd1a1", "#00d2d3", "#ff9ff3", "#5f27cd",
				"#c8d6e5", "#341f97" };
		
		List<PersonalConsumptionVO1> list = dao.consumptionData1(nameList.get(num));
		JSONArray arr2 = new JSONArray();
		int j = 0;
		for (PersonalConsumptionVO1 vo : list) {
			arr2.add(vo.getYear2018());
			j++;

			if (j > 9)
				break;

		}
		
		JSONArray colorJson = new JSONArray();
		for (int i = 0; i < arr2.size(); i++) {
			colorJson.add(color[i]);
		}
		
		JSONArray arrLabel = new JSONArray();
		j = 0;
		
		for (PersonalConsumptionVO1 vo : list) {
			arrLabel.add(vo.getCol2());
			j++;

			if (j > 9)
				break;

		}

		model.addAttribute("json2", arr2);
		model.addAttribute("colorJson", colorJson);
		model.addAttribute("arrLabel", arrLabel);
		model.addAttribute("consumptionName", nameList.get(num));
		
		return "main/ajax/consumptionAjax";
	}
	
	@RequestMapping("main/cityAjax.do")
	public String ajaxController2(String id, String siName, Model model) {
		// 전국 2016, 2017데이터
		List<SidoPercentVO> list = dao.southKoreaPercent(siName);
		
		List<SouthKoreaJsonVO> jsonList = new ArrayList<SouthKoreaJsonVO>();
				
	    String seoulStr = "{\"seoul\":[" + "{\"id\":\"도봉구\", \"coords\":\"216,17,244,58\", \"year2016\":\"23\", \"year2017\":\"23\"},"
				 						 + "{\"id\":\"강북구\", \"coords\":\"191,57,224,76\", \"year2016\":\"29\", \"year2017\":\"31\"},"
				 						 + "{\"id\":\"노원구\", \"coords\":\"252,54,283,79\", \"year2016\":\"23\", \"year2017\":\"24\"} ]}";
		
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(seoulStr);
			JSONArray arr3 = (JSONArray) jsonObj.get("seoul");
			
			for (int i = 0; i < arr3.size(); i++) {
				JSONObject tempObj = (JSONObject) arr3.get(i);
				SouthKoreaJsonVO vo = new SouthKoreaJsonVO();
				
				vo.setId((String) tempObj.get("id"));
				vo.setCoords((String) tempObj.get("coords"));
				vo.setYear2016((String)tempObj.get("year2016"));
				vo.setYear2017((String)tempObj.get("year2017"));
				
				jsonList.add(vo);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		model.addAttribute("dataList", list);
		model.addAttribute("mapName", id);
		model.addAttribute("jsonList", jsonList);
		
		return "main/ajax/cityAjax";
	}
	
}
