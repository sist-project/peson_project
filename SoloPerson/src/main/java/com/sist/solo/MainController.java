package com.sist.solo;

import java.io.FileReader;
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
import com.sist.vo.PersonalConsumptionVO;
import com.sist.vo.PersonalConsumptionVO1;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO dao;
	
	@RequestMapping("main/main.do")
	public String mainController(Model model) {
		// 시도별 분포
		String[] city = {"서울특별시", "부산광역시" ,"대구광역시", "인천광역시" ,"광주광역시", 
					     "대전광역시", "울산광역시", "경기도" ,"충청북도", "충청남도", "전라북도", 
					     "전라남도", "경상남도", "경상북도", "제주특별자치도"};
		List<GenderAgeVO> gList = dao.genderData(city[0]);
		
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

		model.addAttribute("sidoName", city[0]);
		model.addAttribute("json1", arr1.toJSONString());
		
		
		
		// 개인 소비지출
		String[] color = {"#54a0ff", "#feca57", "#ff6b6b", "#48dbfb", "#1dd1a1",
				  "#00d2d3", "#ff9ff3", "#5f27cd", "#c8d6e5", "#341f97"};
		List<PersonalConsumptionVO1> list = dao.consumptionData1();
		JSONArray arr2 = new JSONArray();
		int j = 0;
		for (PersonalConsumptionVO1 vo : list) {	
			arr2.add(vo.getYear2018());
			j++;
			
			if (j > 9)
				break;
			
		}
		System.out.println(arr2);
		JSONArray colorJson = new JSONArray();
		for (int i = 0; i < arr2.size(); i++) {
			colorJson.add(color[i]);
		}
		
		model.addAttribute("json2", arr2);
		model.addAttribute("colorJson", colorJson);
		
		
		
		/*String[] color = {"#54a0ff", "#feca57", "#ff6b6b", "#48dbfb", "#1dd1a1",
						  "#00d2d3", "#ff9ff3", "#5f27cd", "#c8d6e5", "#341f97"};
		List<PersonalConsumptionVO> vo = dao.consumptionData();
		JSONArray arr2 = new JSONArray();
		
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_subtotal().replaceAll(",", "")));		// 식료품,비주류 음료 소계
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_grain().replaceAll(",", "")));			// 곡물
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_bread().replaceAll(",", "")));			// 빵및떡류
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_meat().replaceAll(",", "")));			// 육류
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_aquatic_animal().replaceAll(",", "")));// 신선수산동물
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_milk_products().replaceAll(",", ""))); // 유제품 및 알
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_fruit_goods().replaceAll(",", "")));	// 과일및과일가공품
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_seasoning().replaceAll(",", "")));	 	// 조미식품
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_coffee().replaceAll(",", "")));		// 커피식품
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_juice().replaceAll(",", "")));			// 쥬스및기타음료

		JSONArray colorJson = new JSONArray();

		for (int i = 0; i < arr2.size(); i++) {
			colorJson.add(color[i]);
		}

		model.addAttribute("json2", arr2);
		model.addAttribute("colorJson", colorJson);
		JSONArray arrLabel = new JSONArray();
		
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(new FileReader("C:\\git\\peson_project\\SoloPerson\\src\\main\\webapp\\main\\consumption.json"));
			JSONArray array = (JSONArray) jsonObj.get("consumption");
			for (int i = 0; i <array.size(); i++) {
				JSONObject result = (JSONObject) array.get(i);
				String name = (String) result.get("name");	
				arrLabel.add(name);		// ["", "", ""]
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("arrLabel", arrLabel);*/
		
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
		
		
		return "main/ajax/consumptionAjax";
	}
	
}
