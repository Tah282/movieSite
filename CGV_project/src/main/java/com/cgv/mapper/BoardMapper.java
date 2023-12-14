package com.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.cgv.vo.Board;

@Mapper
public interface BoardMapper {

	public int getAllCount();
	
	public List<Board> getAllBoard(@Param("startRow") int startRow, @Param("pageSize") int pageSize);
	
	public Integer getMaxRef();
	
	public void boardWrite(Board board);
	
	public void updateBoardReadCount(int num);
	
	public Board getOneBoard(int num);
	
	public void updateBoard(Board board);
	
	public void boardDelete(int num);
	
	public void updateReBoard(Board board);
	
	public void reWriteBoard(Board board);
	
}
