package com.sist.solo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.dao.RoomDAO;
import com.sist.vo.Room_categoryVO;
import com.sist.vo.Room_furnitureVO;
import com.sist.vo.Room_replyVO;

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
	public String topFive(int cateno, Model model) {
		List<Room_furnitureVO> fList = dao.Room_furnitureData(cateno);

		String fee = "";

		for (Room_furnitureVO vo : fList) {
			fee = vo.getShippingfee();

			if (fee.indexOf("(") != -1) {
				vo.setShippingfee(fee.substring(0, fee.indexOf("(")));
			}
		}

		model.addAttribute("fList", fList);
		return "room/ajax/topFive";
	}

	@RequestMapping("room/roomReply.do")
	public String roomReply(int pno, Model model) {
		List<Room_replyVO> rList = dao.room_ReplyAllData(pno);

		model.addAttribute("rList", rList);

		return "room/ajax/roomReply";
	}

	@RequestMapping("room/room_replyInsert.do")
	public String room_replyInsertData(Room_replyVO vo, Model model) {
		dao.room_replyInsertData(vo);
		List<Room_replyVO> rList = dao.room_ReplyAllData(vo.getPno());

		model.addAttribute("rList", rList);
		return "room/ajax/roomReply";
	}
}
