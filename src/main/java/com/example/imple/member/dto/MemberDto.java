package com.example.imple.member.dto;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


	@Mapper
	@Repository
	public interface MemberDto {
		
		public int getId(MemberDto dto);
		
		public int addmember(MemberDto dto);
		
		public MemberDto login(MemberDto dto);
}
