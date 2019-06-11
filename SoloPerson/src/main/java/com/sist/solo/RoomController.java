package com.sist.solo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.RoomDAO;
import com.sist.vo.Room_categoryVO;
import com.sist.vo.Room_furnitureVO;

@Controller
public class RoomController {
	@Autowired
	private RoomDAO dao;
	
	@RequestMapping("room/room.do")
	public String roomController(Model model) {
		List<Room_categoryVO> cateList = dao.Room_categoryData();
		model.addAttribute("cateList", cateList);
		return "room/room";
	}
	
	@RequestMapping("room/topfive.do")
	public String topFive(int cateno, Model model){
		List<Room_furnitureVO> fList = dao.Room_furnitureData(cateno);
		
		String fee = "";
		
		for(Room_furnitureVO vo : fList){
			fee = vo.getShippingfee();
			
			if(fee.indexOf("(") != -1){
				vo.setShippingfee(fee.substring(0, fee.indexOf("(")));
			}
			
			
		}
		
		model.addAttribute("fList", fList);
		return "room/ajax/topFive";
	}
}
