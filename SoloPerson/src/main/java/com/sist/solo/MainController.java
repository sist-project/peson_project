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
		// �õ��� ����
		String[] city = {"����Ư����", "�λ걤����" ,"�뱸������", "��õ������" ,"���ֱ�����", 
					     "����������", "��걤����", "��⵵" ,"��û�ϵ�", "��û����", "����ϵ�", 
					     "���󳲵�", "��󳲵�", "���ϵ�", "����Ư����ġ��"};
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
		
		
		
		// ���� �Һ�����
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
		
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_subtotal().replaceAll(",", "")));		// �ķ�ǰ,���ַ� ���� �Ұ�
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_grain().replaceAll(",", "")));			// �
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_bread().replaceAll(",", "")));			// ���׶���
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_meat().replaceAll(",", "")));			// ����
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_aquatic_animal().replaceAll(",", "")));// �ż����굿��
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_milk_products().replaceAll(",", ""))); // ����ǰ �� ��
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_fruit_goods().replaceAll(",", "")));	// ���Ϲװ��ϰ���ǰ
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_seasoning().replaceAll(",", "")));	 	// ���̽�ǰ
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_coffee().replaceAll(",", "")));		// Ŀ�ǽ�ǰ
		arr2.add(Integer.parseInt(vo.get(0).getGroceries_juice().replaceAll(",", "")));			// �꽺�ױ�Ÿ����

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
		
		// �õ��� ����
		int num = (int)(Math.random()*15);
		
		String[] city = {"����Ư����", "�λ걤����" ,"�뱸������", "��õ������" ,"���ֱ�����", 
					     "����������", "��걤����", "��⵵" ,"��û�ϵ�", "��û����", "����ϵ�", 
					     "���󳲵�", "��󳲵�", "���ϵ�", "����Ư����ġ��"};
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
