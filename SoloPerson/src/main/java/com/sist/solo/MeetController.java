package com.sist.solo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.sist.dao.*;
import com.sist.vo.*;

import java.text.SimpleDateFormat;
import java.util.*;
@Controller
public class MeetController {
	@Autowired
	private MeetDAO dao;
	
	@RequestMapping("meet/meet_main.do")
	public String meetController(String page, Model model) {
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=9;
		
		int start=(curpage*rowSize)-(rowSize-1);
		int end=(curpage*rowSize);
		
	    Map map=new HashMap();
	    map.put("start",start);
	    map.put("end",end);
	    
	    int totalpage=dao.meetTotalPage();
	    List<MeetVO> list=dao.meetListData(map);
	    
	    final int BLOCK=5;
	    int allPage=totalpage;
	    int startPage=((curpage-1)/BLOCK*BLOCK)+1;	    
	    int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
	    if(endPage>allPage)
	    	endPage=allPage;
	    	    
	    model.addAttribute("list",list);
	    model.addAttribute("BLOCK",BLOCK);
	    model.addAttribute("startPage",startPage);
	    model.addAttribute("endPage",endPage);
	    model.addAttribute("allPage",allPage);
	    model.addAttribute("curpage",curpage);
	    model.addAttribute("page",page);
	    //model.addAttribute("meetList_jsp","meetList.jsp");
	    
		return "meet/meet_main";
	}
	
	@RequestMapping("meet/mapFind.do")
	public String meet_mapFind(String no,Model model){
		String[] guList = { "전체", "강서", "양천", "구로", "마포", "영등포", "금천",
				"은평", "서대문", "동작", "관악", "종로", "중구", "용산", "서초", "강북",
				"성북", "도봉", "동대문", "성동", "강남", "노원", "중랑", "광진", "송파",
				"강동" };
		String gu=null;
		if(no!=null)
			gu=guList[Integer.parseInt(no)];
		Map map=new HashMap();
		map.put("gu", gu);
		
		List<MeetVO> list=dao.meetmapFind(map);
		
		model.addAttribute("list",list);
		model.addAttribute("count",list.size());
		
		return "meet/list/meetList";
	}
	
	@RequestMapping("meet/meet_detail.do")
	public String meet_detail(String mno,Model model)
	{		
		//상세정보
		MeetVO vo=dao.meetDetailData(mno);
		model.addAttribute("vo",vo);
		//
		//후기
		List<Meet_ReplyVO> rList=dao.meet_replyAllData(Integer.parseInt(mno));
		model.addAttribute("rList",rList);
		//
				
		//달력 출력
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-M-d");
		String today = sdf.format(date);
		StringTokenizer st = new StringTokenizer(today, "-");
		int year = Integer.parseInt(st.nextToken());
		int month = Integer.parseInt(st.nextToken());
		int day = Integer.parseInt(st.nextToken());

		// 요일 1일 ==> 5월 1일 요일 (수요일)
		Calendar cal = Calendar.getInstance();
		// Calendar 객체 생성
		// 날짜 설정 => 요일 구한다
		cal.set(Calendar.YEAR, year);
		cal.set(Calendar.MONTH, month - 1);// month=>0시작
		cal.set(Calendar.DATE, 1);

		int week = cal.get(Calendar.DAY_OF_WEEK);// 요일 구하기
		String[] strWeek = { "일", "월", "화", "수", "목", "금", "토" };
		int lastDay = cal.getActualMaximum(Calendar.DATE);// 31
		
		// date.jsp로 데이터 전송
		model.addAttribute("year",year);
		model.addAttribute("month",month);
		model.addAttribute("day",day);
		model.addAttribute("week",week);
		model.addAttribute("lastDay",lastDay);
		model.addAttribute("strWeek",strWeek);
		
		// 예약 가능한 날짜 
		String res=dao.meetReserveDate(mno);
		int[] rdata=new int[lastDay];
		StringTokenizer st1=new StringTokenizer(res, ",");		
		
		while (st1.hasMoreTokens())// 분해한 갯수만큼 수행
		{
			int rno = Integer.parseInt(st1.nextToken());

			for (int j = 0; j < rdata.length; j++) 
			{
				if (j == (rno - 1) && rno >= day) 
				{
					rdata[j] = rno;
				}
			}
		}
		
		model.addAttribute("rdata",rdata);
		//
		
		
				
		return "meet/meet_detail";
	}
	
	@RequestMapping("meet/time.do")
	public String meet_time(String day,Model model)
	{				
		String time=dao.meetReserveTime(day);
		
		StringTokenizer st=new StringTokenizer(time, ",");
		List<String> list=new ArrayList<String>();
		
		while(st.hasMoreTokens())
		{
			int tno = Integer.parseInt(st.nextToken());
			String s = dao.meetTimeData(tno);
			list.add(s);
		}
		
		model.addAttribute("list",list);
		
		return "meet/reserve/time";
	}	
	
	@RequestMapping("meet/reserve.do")
	public String meet_reserve(Meet_ReserveVO vo,Model model)
	{	
		int rmno=vo.getRmno();
		int rdno=vo.getRdno();
		String rtime=vo.getRtime();
		
		Map map=new HashMap();
	    map.put("rmno",rmno);
	    map.put("rdno",rdno);
		map.put("rtime", rtime);
		
	    
	    //신청자 수 확인
	    String rcount=dao.meetReserveCount(map);
	    
	    if(rcount==null || Integer.parseInt(rcount)==0)	//신청자수 0 => 신청 추가 => 신청자수 증가
	    {
	    	dao.meetReserveInsert(vo);
	    	dao.meetReserveIncrement(map);
	    }
	    else	//신청자수 증가
	    {	
	    	dao.meetReserveIncrement(map);
	    }
	    
	    
		return "redirect:meet_detail.do?pageName=meet&mno="+vo.getRmno();
	}
	
	@RequestMapping("meet/reserve_ok.do")
	public String meet_reserve_ok(String rmno,String rdno,String rtime,Model model)
	{
		Map map=new HashMap();
	    map.put("rmno",rmno);
	    map.put("rdno",rdno);
		map.put("rtime", rtime);		
		
		String rcount=dao.meetReserveCount(map);	
		
		if(rcount==null)
			rcount="0";
		model.addAttribute("rcount",rcount);
		
		return "meet/reserve/reserve_ok";
	}
	
	@RequestMapping("meet/replyInsert.do")
	public String meet_replyInsert(Meet_ReplyVO vo)
	{
		dao.meet_replyInsertData(vo);
		return "redirect:meet_detail.do?pageName=meet&mno="+vo.getRno();
	}	
	
	
}
