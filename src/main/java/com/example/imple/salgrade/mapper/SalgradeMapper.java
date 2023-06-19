package com.example.imple.salgrade.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.salgrade.model.Salgrade;

@Mapper
public interface SalgradeMapper {
	
	@Select("select count(*) from salgrade")
	int countAll();
	
	@Select("select * from salgrade")
	List<Salgrade> selectAll();
	
	@Select("""
			select * 
			  from salgrade
			 where grade = #{grade}
			""")
	Salgrade selectByGrade(int grade);
	
	@Insert("""
			insert into salgrade
			values(
			#{e.grade},
			#{e.losal},
			#{e.hisal}
			)
			""")
	int insertSalgrade(@Param("e") Salgrade salgrade);
	
	@Update("""
			update salgrade
			   set grade = #{s.grade},
			       losal = #{s.losal},
			       hisal = #{s.hisal}
			 where grade = ${s.grade}
			""")
	int updateSalgrade(@Param("s") Salgrade salgrade);
		
	
	@Delete("delete from salgrade where grade=#{grade}")
	int delete(int grade);
}
