package com.myspring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.myspring.vo.Member;

@Mapper
public interface MemberMapper {
	
	public List<Member> getMemberList();
	
	public Member checkMemberId(String id);
	
	public void memberJoin(Member member);
	
	public Member checkMember(Member member);
	
	public Member getMember(String id);
	
	public void updateMember(Member member);
}
