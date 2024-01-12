package com.cgv.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cgv.mapper.BoardMapper;
import com.cgv.vo.Board;
import com.cgv.vo.Member;

@RequestMapping("/board")
@Controller
public class BoardController extends HttpServlet {
	
	@Autowired
	private BoardMapper mapper;
       
	@GetMapping(value = "/boardList.do")
	public String boardList(HttpServletRequest request, Model model) {
		
		//한페이지에 보여줄 글 개수
		int pageSize = 5;
		
		//현재 페이지 번호
		int currentPage = 1;
		if(request.getParameter("pageNum") != null) {
			currentPage = Integer.parseInt(request.getParameter("pageNum"));
		}
		
		//전체 글 개수
		int count = mapper.getAllCount(); 
		
		//현재 페이지의 시작글 인덱스 번호
		int startRow = (currentPage-1)*pageSize;
		
		List<Board> boardList = mapper.getAllBoard(startRow, pageSize);
		
		int number = count - (currentPage - 1) * pageSize;
		
		//페이징 보이는 쪽수
		int clickablePageCount = 5;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		//첫 페이지
		int startPage = 0;
		if(currentPage % clickablePageCount != 0) {
			startPage = (currentPage / clickablePageCount) * clickablePageCount + 1;
		}else {
			startPage = (currentPage / clickablePageCount - 1) * clickablePageCount + 1;
		}
		
		int endPage = startPage + clickablePageCount - 1;
		if(endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("boardList", boardList);
		model.addAttribute("number", number);
		model.addAttribute("count", count);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("pageSize", pageSize);
		
		model.addAttribute("clickablePageCount", clickablePageCount);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		return "board/boardList";
	}
	
	@GetMapping(value="/boardWriteForm.do")
	public String boardWriteForm(HttpSession session, Model model) {
		
		if( session.getAttribute("log") != null) {
			
			model.addAttribute("id", (String)session.getAttribute("log"));
			
			return "board/boardWriteForm";
		}else {
			return "member/loginForm";
		}
		
		
	}
    
	@PostMapping(value = "/boardWritePro.do")
	public String boardWritePro(Board board, HttpServletRequest request) {
		
		Integer ref = mapper.getMaxRef();
		if(!Objects.nonNull(ref)) { //ref == null
			ref = 1;
		}else {
			ref++;
		}
		board.setRef(ref);
		mapper.boardWrite(board);
		
		return "board/boardWritePro";
	}
	
	@GetMapping(value="/boardInfo.do")
	public String boardInfo(HttpSession session,HttpServletRequest request, Model model) {
		String writer = request.getParameter("writer");
		String log = (String)session.getAttribute("log");
		
		if( writer.equals(log)) {
			
			int num = Integer.parseInt(request.getParameter("num"));
			
			mapper.updateBoardReadCount(num);
			
			Board board = mapper.getOneBoard(num);
			
			model.addAttribute(board);
			
			if(board.getManager() == null) {
				return "board/boardInfo";
			}else {
				return "board/boardInfo2";
			}
			
			
		}else {
			return "redirect:boardList.do";
		}
		
	}
	
	@GetMapping(value="/boardUpdateForm.do")
	public String boardUpdateForm(HttpServletRequest request, Model model) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		Board board = mapper.getOneBoard(num);
		
		model.addAttribute(board);
		
		return "board/boardUpdateForm";
	}
	
	@PostMapping(value = "/boardUpdatePro.do")
	public String boardUpdatePro(Board board, HttpServletRequest request) {

		mapper.updateBoard(board);
		
		return "redirect:boardList.do";
	}
	
	@GetMapping(value = "/boardDelete.do")
	public String boardDelete(HttpServletRequest request) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		mapper.boardDelete(num);
		
		return "redirect:boardList.do";
	}
	
	/*
	 * @GetMapping(value = "/boardReWriteForm.do") public String
	 * boardReWriteForm(HttpServletRequest request, Model model) {
	 * 
	 * int num = Integer.parseInt(request.getParameter("num"));
	 * 
	 * Board board = mapper.getOneBoard(num);
	 * 
	 * int ref = board.getRef(); int re_step = board.getRe_step(); int re_level =
	 * board.getRe_level();
	 * 
	 * model.addAttribute("ref", ref); model.addAttribute("re_step", re_step);
	 * model.addAttribute("re_level", re_level);
	 * 
	 * return "board/boardReWriteForm"; }
	 * 
	 * @PostMapping(value = "/boardReWritePro.do") public String
	 * boardReWritePro(Board board) {
	 * 
	 * mapper.updateReBoard(board); mapper.reWriteBoard(board);
	 * 
	 * return "redirect:boardList.do"; }
	 */
	

}
