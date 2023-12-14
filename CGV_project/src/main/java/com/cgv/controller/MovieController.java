package com.cgv.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cgv.mapper.BoardMapper;
import com.cgv.mapper.MovieMapper;
import com.cgv.vo.Movie;

@RequestMapping("/movie")
@Controller
public class MovieController {

	@Autowired
	private MovieMapper mapper;
	
	@ResponseBody
	@GetMapping(value="movieList1_5")
	public List<Movie> movieList1_5() {
		
		List<Movie> movieList = mapper.getMovieList1_5();
		
		return movieList;
	}
	
	@ResponseBody
	@GetMapping(value="movieList2_5")
	public List<Movie> movieList2_5() {
		
		List<Movie> movieList = mapper.getMovieList2_5();
		
		return movieList;
	}
	
	@GetMapping(value="/movieInfo.do")
	public String movieInfo(HttpServletRequest request, Model model) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		Movie movie =  mapper.getOneMovie(num);
		model.addAttribute(movie);
		
		return "movie/movieInfo";
	}
	
	@GetMapping(value="/movieTotalList.do")
	public String movieTotalList(HttpServletRequest request, Model model) {
		
		String check = request.getParameter("check");
		List<Movie> movieList = mapper.getMovieList1();
		model.addAttribute(movieList);
		model.addAttribute("check",check);
		
		return "movie/movieTotalList";
	}
	
	@ResponseBody
	@GetMapping(value="movieList1")
	public List<Movie> movieList1() {
		
		List<Movie> movieList = mapper.getMovieList1();
		
		return movieList;
	}
	
	@ResponseBody
	@GetMapping(value="movieList2")
	public List<Movie> movieList2() {
		
		List<Movie> movieList = mapper.getMovieList2();
		
		return movieList;
	}
	
	@ResponseBody
	@GetMapping(value="chartCount")
	public Integer chartCount() {
		Integer count = mapper.chartAllCount();
		return count;
	}
	
	@ResponseBody
	@GetMapping(value="openCount")
	public Integer openCount() {
		Integer count = mapper.openAllCount();
		return count;
	}
	
}


