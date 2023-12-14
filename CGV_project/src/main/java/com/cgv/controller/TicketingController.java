package com.cgv.controller;

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
import com.cgv.vo.Movie;
import com.cgv.vo.Ticketing;

@RequestMapping("/ticketing")
@Controller
public class TicketingController {

	@Autowired
	private TicketingMapper mapper;
	
	@GetMapping(value="/ticketingForm.do")
	public String ticketingForm (Model model) {	
		
		List<Movie> list = mapper.getMovieList();
		model.addAttribute("movieList",list);
		
		return "ticketing/ticketingForm";
	}
	
//	 @PostMapping(value="/checkData") 
//	 public String checkData(Ticketing ticketing,HttpSession session) {
//	  
//		 List<Ticketing> ticketingList = mapper.checkSeat(ticketing);
//		 System.out.println(ticketingList);
//		 
//		 session.setAttribute("list", ticketingList);
//		  
//		 return "ticketing/ticketingSeatForm"; 
//	 }
	 
	@ResponseBody
	@PostMapping(value="/checkData")
	public List<Ticketing> checkData(Ticketing ticketing,HttpSession session) {

		
		List<Ticketing> ticketingList = mapper.checkSeat(ticketing);
		System.out.println(ticketingList);
		
		session.setAttribute("list", ticketingList);
		
		return ticketingList;
	}
	
	@GetMapping(value="/ticketingSeatForm.do")
	public String ticketingPro(Model model,HttpSession session) {
		
		@SuppressWarnings("unchecked")
		List<Ticketing> seatList = (List<Ticketing>)session.getAttribute("list");
		System.out.println(seatList);
		//model.addAttribute("seatList", list);
		
		return "ticketing/ticketingSeatForm";
	}
	 
}

