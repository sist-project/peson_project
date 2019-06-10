package com.sist.solo;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.MainDAO;
import com.sist.vo.GenderAgeVO;

@Controller
public class MainController {
	
	@Autowired
	private MainDAO maindao;
	
	@RequestMapping("main/main.do")
	public String mainController() {
		String[] city = {"����Ư����", "�λ걤����" ,"�뱸������", "��õ������" ,"���ֱ�����", 
					     "����������", "��걤����", "��⵵" ,"��û�ϵ�", "��û����", "����ϵ�", 
					     "���󳲵�", "��󳲵�", "���ϵ�", "����Ư����ġ��"};
	
		return "main/main";
	}
	
}
