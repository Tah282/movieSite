package com.cgv.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.cgv.vo.Board;
import com.cgv.vo.Manager;
import com.cgv.vo.Member;
import com.cgv.vo.Movie;

@Mapper
public interface ManagerMapper {

	/*=================== member ======================*/
	public List<Member> getMemberList();
	
	public Member getOneMember(int num);
	
	public void updateMember(Member member);
	
	public void deleteMember(int num);

	/*=================== board ======================*/
	public int getAllCount();

	public List<Board> getAllBoard(@Param("startRow") int startRow, @Param("pageSize") int pageSize);

	public Board getOneBoard(int num);
	
	public String getOneManager(String id);

	public void boardDelete(int num);

	public void updateReBoard(Board board);

	public void reWriteBoard(Board board);
	
	/*=================== movie ======================*/
	public void insertMovie(Movie movie);
	
}
