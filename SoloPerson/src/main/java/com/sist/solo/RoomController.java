package com.sist.solo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoomController {
	@RequestMapping("room/room.do")
	public String roomController() {
		
		return "room/room";
	}
}
