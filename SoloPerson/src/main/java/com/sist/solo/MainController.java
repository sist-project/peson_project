package com.sist.solo;

import java.io.FileReader;
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
		// �õ��� ����
		String[] city = { "����Ư����", "�λ걤����", "�뱸������", "��õ������", "���ֱ�����", "����������", "��걤����", "��⵵", "��û�ϵ�", "��û����", "����ϵ�",
				"���󳲵�", "��󳲵�", "���ϵ�", "����Ư����ġ��" };
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

		
		// ���� �Һ�����
		String[] color = { "#54a0ff", "#feca57", "#ff6b6b", "#48dbfb", "#1dd1a1", "#00d2d3", "#ff9ff3", "#5f27cd",
				"#c8d6e5", "#341f97" };
		List<String> nameList = dao.consumptionName();	// ���� ��� �̸�
		
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
		
		// ���� �α� ���� ����
		SidoPercentVO vo = dao.southKorea();
		
		model.addAttribute("siName", vo.getSi());
		model.addAttribute("guName", vo.getGu());
		model.addAttribute("get2016", vo.getYear2016());
		model.addAttribute("get2017", vo.getYear2017());
		
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
		List<String> nameList = dao.consumptionName();	// ���� ��� �̸�
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
		// ���� 2016, 2017������
		List<SidoPercentVO> list = dao.southKoreaPercent(siName);
		
		List<SouthKoreaJsonVO> jsonList = new ArrayList<SouthKoreaJsonVO>();
				
	    /*String seoulStr = "{\"����Ư����\":[" + "{\"id\":\"������\", \"coords\":\"216,17,244,58\", \"year2016\":\"23\", \"year2017\":\"23\"},"
				 						 + "{\"id\":\"���ϱ�\", \"coords\":\"191,57,224,76\", \"year2016\":\"29\", \"year2017\":\"31\"},"
				 						 + "{\"id\":\"���ϱ�\", \"coords\":\"202,102,230,114\", \"year2016\":\"31\", \"year2017\":\"31\"},"
				 						 + "{\"id\":\"���α�\", \"coords\":\"171,119,199,134\", \"year2016\":\"38\", \"year2017\":\"38\"},"
				 						 + "{\"id\":\"����\", \"coords\":\"128,76,156,90\", \"year2016\":\"25\", \"year2017\":\"26\"},"
				 						 + "{\"id\":\"�߶���\", \"coords\":\"263,107,292,119\", \"year2016\":\"29\", \"year2017\":\"30\"},"
				 						 + "{\"id\":\"���빮��\", \"coords\":\"227,122,263,136\", \"year2016\":\"36\", \"year2017\":\"37\"},"
				 						 + "{\"id\":\"���α�\", \"coords\":\"169,119,199,134\", \"year2016\":\"38\", \"year2017\":\"38\"},"
				 						 + "{\"id\":\"���빮��\", \"coords\":\"125,129,163,141\", \"year2016\":\"34\", \"year2017\":\"34\"},"
				 						 + "{\"id\":\"������\", \"coords\":\"30,142,62,155\", \"year2016\":\"27\", \"year2017\":\"29\"},"
				 						 + "{\"id\":\"������\", \"coords\":\"109,150,138,161\", \"year2016\":\"35\", \"year2017\":\"35\"},"
				 					 	 + "{\"id\":\"�߱�\", \"coords\":\"185,147,207,159\", \"year2016\":\"38\", \"year2017\":\"39\"},"
				 						 + "{\"id\":\"������\", \"coords\":\"220,155,250,167\", \"year2016\":\"32\", \"year2017\":\"32\"},"
				 					 	 + "{\"id\":\"������\", \"coords\":\"261,160,290,172\", \"year2016\":\"36\", \"year2017\":\"37\"},"
				 						 + "{\"id\":\"������\", \"coords\":\"306,157,335,168\", \"year2016\":\"25\", \"year2017\":\"26\"},"
				 						 + "{\"id\":\"��걸\", \"coords\":\"169,171,197,186\", \"year2016\":\"35\", \"year2017\":\"36\"},"
				 						 + "{\"id\":\"��õ��\", \"coords\":\"66,189,96,201\", \"year2016\":\"20\", \"year2017\":\"20\"},"
				 						 + "{\"id\":\"��������\", \"coords\":\"104,186,146,197\", \"year2016\":\"34\", \"year2017\":\"35\"},"
				 						 + "{\"id\":\"���۱�\", \"coords\":\"146,205,175,218\", \"year2016\":\"33\", \"year2017\":\"34\"},"
				 						 + "{\"id\":\"���α�\", \"coords\":\"50,217,79,230\", \"year2016\":\"27\", \"year2017\":\"28\"},"
				 						 + "{\"id\":\"��õ��\", \"coords\":\"102,251,131,265\", \"year2016\":\"34\", \"year2017\":\"35\"},"
				 						 + "{\"id\":\"���ʱ�\", \"coords\":\"198,229,226,242\", \"year2016\":\"25\", \"year2017\":\"26\"},"
				 						 + "{\"id\":\"������\", \"coords\":\"241,214,271,227\", \"year2016\":\"30\", \"year2017\":\"30\"},"
				 						 + "{\"id\":\"���ı�\", \"coords\":\"285,202,314,216\", \"year2016\":\"24\", \"year2017\":\"25\"},"
				 						 + "{\"id\":\"���Ǳ�\", \"coords\":\"141,244,169,258\", \"year2016\":\"45\", \"year2017\":\"46\"},"
				 						 + "{\"id\":\"�����\", \"coords\":\"254,61,284,74\", \"year2016\":\"23\", \"year2017\":\"24\"} ]}";*/
		
		try {
			JSONParser jsonParser = new JSONParser();
			
			Object obj = (JSONObject) jsonParser.parse(new FileReader("C:\\git\\peson_project\\SoloPerson\\src\\main\\webapp\\main\\sido.json"));
			JSONObject jsonObject = (JSONObject) obj;
			JSONArray arr3 = (JSONArray) jsonObject.get(siName);
			
			/*JSONObject jsonObj = (JSONObject) jsonParser.parse(seoulStr);
			JSONArray arr3 = (JSONArray) jsonObj.get(siName);*/
			
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
		model.addAttribute("siName", siName);
		model.addAttribute("dataList", list);
		model.addAttribute("mapName", id);
		model.addAttribute("jsonList", jsonList);
		
		return "main/ajax/cityAjax";
	}
	
	@RequestMapping("main/graphAjax.do")
	public String ajaxController3(String year2016, String year2017, String gu, Model model) {
		
		model.addAttribute("guName", gu);
		model.addAttribute("get2016", year2016);
		model.addAttribute("get2017", year2017);
		
		return "main/ajax/graphAjax";
	}
	
}
