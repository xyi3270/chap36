package com.example.imple.language.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.imple.language.model.Language;
import com.github.pagehelper.Page;

@Mapper
public interface LanguageMapper {
	
	List<Language> selectAll();
	List<Language> selectAllOrderbyCodeAsc();
	List<Language> selectAllOrderbyCodeDesc();
	List<Language> selectAllOrderbyLangAsc();
	List<Language> selectAllOrderbyLangDesc();
	List<Language> selectAllOrderbyOffT();
	List<Language> selectAllOrderbyOffF();
	List<Language> selectAllOrderbyPerAsc();
	List<Language> selectAllOrderbyPerDesc();
	Page<Language> selectPage();
}
