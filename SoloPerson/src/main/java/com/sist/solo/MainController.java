package com.sist.solo;

import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MainDAO;
import com.sist.vo.GenderAgeVO;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO dao;
	
	@RequestMapping("main/main.do")
	public String mainController(Model model) {
		String[] city = {"����Ư����", "�λ걤����" ,"�뱸������", "��õ������" ,"���ֱ�����", 
					     "����������", "��걤����", "��⵵" ,"��û�ϵ�", "��û����", "����ϵ�", 
					     "���󳲵�", "��󳲵�", "���ϵ�", "����Ư����ġ��"};
		List<String> cityList = dao.cityList();
		List<GenderAgeVO> list = dao.genderData(city[0]);
		
		JSONArray arr=new JSONArray();
		for (GenderAgeVO vo : list) {
			JSONObject obj = new JSONObject();
			obj.put("age", vo.getAge());
			obj.put("total", vo.getTotal());
			obj.put("female", vo.getFemale());
			obj.put("male", vo.getMale());
			
			arr.add(obj);
		}
		model.addAttribute("sidoName", city[0]);
		model.addAttribute("json", arr.toJSONString());
		
/*		for (String sido : cityList) {
			GenderAgeVO vo = new GenderAgeVO();
			vo.setCity(sido);
			list.add(vo);
			
		}
		
		JSONArray arr = new JSONArray();
		for (GenderAgeVO vo : list) {
			if (city[0].equals(vo.getCity())) {
				 vo.setAge(city[0]);
			}
		}
		*/
		
		
		
		return "main/main";
	}
	
}
