package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.vo.*;
import com.sist.dao.*;
import java.util.*;
@Controller
public class MartController {


	
	@RequestMapping("mart/mart.do")
	public String martController(Model model) {
		
		
		
		return "mart/mart";
	}
	
}
