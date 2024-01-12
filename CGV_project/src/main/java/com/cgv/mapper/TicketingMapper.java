package com.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.cgv.vo.Movie;
import com.cgv.vo.Ticketing;

@Mapper
public interface TicketingMapper {
	
	public List<Movie> getMovieList();
	public List<Integer> checkSeat(Ticketing ticketing);
	public void saveTickting(Ticketing ticketing);
}
