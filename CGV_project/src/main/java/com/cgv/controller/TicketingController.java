package com.cgv.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cgv.mapper.MovieMapper;
import com.cgv.mapper.TicketingMapper;
import com.cgv.vo.Member;
import com.cgv.vo.Movie;
import com.cgv.vo.Ticketing;
import com.google.protobuf.Parser;

@RequestMapping("/ticketing")
@Controller
public class TicketingController {

	@Autowired
	private TicketingMapper mapper;
	
	@GetMapping(value="/ticketingForm.do")
	public String ticketingForm (HttpSession session, Model model) {	
		
		if(session.getAttribute("log") != null) {
			
			List<Movie> list = mapper.getMovieList();
			model.addAttribute("movieList",list);
			
			return "ticketing/ticketingForm";
		}else {
			return "member/loginForm";
		}
		
	}
	 
	@PostMapping(value="/checkData")
	public String checkData(HttpServletRequest request,Model model,Ticketing ticketing) {
		
		List<Integer> ticketingList = mapper.checkSeat(ticketing);	
		int size = ticketingList.size();
		List<String> stList = new ArrayList<String>();
		
		for(int i=1; i<25; i++) {
			boolean check = false;
			for(int j=0; j<size; j++) {
				if(Integer.valueOf(i)==ticketingList.get(j)) {
					check = true;
					break;
				}
			}
			
			if(check) {
				stList.add("X");
			}else {
				stList.add("O");
			}
		}
		
		model.addAttribute("seatList", stList);
		model.addAttribute("movie", ticketing.getMovieNum());
		model.addAttribute("theater", ticketing.getTheater());
		model.addAttribute("date", ticketing.getDate());
		
		return "ticketing/ticketingSeatForm";
	}
	
	@PostMapping(value="/saveData")
	public String saveData(HttpServletRequest request,Model model,HttpSession session) {
		
		String seatlist[] =  request.getParameterValues("seatNumTd");     
		String id = (String) session.getAttribute("log");
		
		for(int i=0; i<seatlist.length; i++) {
			if(seatlist[i] != "") {
				Ticketing ticketing = new Ticketing();
				ticketing.setId(id);
				ticketing.setMovieNum(Integer.parseInt(request.getParameter("movieNum")));
				ticketing.setTheater(request.getParameter("theater"));
				ticketing.setDate(request.getParameter("date"));
				ticketing.setSeat(Integer.parseInt(seatlist[i]));
				mapper.saveTickting(ticketing);
			}
		}
		
		return "ticketing/ticketingSeatFormPro";
	}
	
	 
}

