package com.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.cgv.vo.Movie;

@Mapper
public interface MovieMapper {
	
	public List<Movie> getMovieList1_5();
	public List<Movie> getMovieList1();
	
	public List<Movie> getMovieList2_5();
	public List<Movie> getMovieList2();
	
	public Movie getOneMovie(int num);
	
	public Integer chartAllCount();
	public Integer openAllCount();
}
