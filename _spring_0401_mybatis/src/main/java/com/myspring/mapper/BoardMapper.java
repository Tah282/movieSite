package com.myspring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myspring.vo.Board;

public interface BoardMapper {
	public int getAllCount();
	public List<Board> getAllBoard(@Param("startRow") int startRow, @Param("pageSize") int pageSize);

	public int getMaxRef();
	public void boardWrite(Board board);
	
	public void updateBoardReadCount(int num);
	public Board getOneBoard(int num);
	
	public void updateBoard(Board board);
	
	public void boardDelete(int num);

	// 댓글 게시판 업데이트
	public void updateReBoard(Board board);
	public void reWriteBoard(Board board);
	
}
