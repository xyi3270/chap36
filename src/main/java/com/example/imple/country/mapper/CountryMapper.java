package com.example.imple.country.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.imple.city.model.City;
import com.example.imple.country.model.Country;
import com.github.pagehelper.Page;

@Mapper
public interface CountryMapper {
	int 		  countAll();
	List<City>	  selectCitys(String code);
	List<Country> selectAll();
	List<Country> selectAllWithCitys();
	Page<Country> selectPage();
	Page<Country> selectPageWithCitys();
	Country 	  selectByCode(String code);
	Country 	  selectByCodeWithCitys(String code);

int insert(@Param("code") String code,
		   @Param("name") String name);

int insertCoountry(Country country);

int updatePopulationByCode(@Param("code") String code,
						   @Param("pipulation") Long population);

int updateCountry(Country country);

int delete(String code);
}