package com.cgv.mapper;

import java.util.List;

import com.cgv.vo.Manager;
import com.cgv.vo.Member;

public interface MemberMapper {
	
	public Member checkMember(Member member);
	
	public Member checkMemberId(String id);
	
	public void memberJoin(Member member);
	
	public void updateMember(Member member); 
	
	public List<Member> getMemberList();	
	
	public Manager checkManager(Manager manager);
	
}
