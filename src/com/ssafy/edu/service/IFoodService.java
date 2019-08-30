package com.ssafy.edu.service;

import java.util.List;

import com.ssafy.edu.dto.FoodDto;
import com.ssafy.edu.dto.MemberDto;
import com.ssafy.edu.dto.PageDto;

public interface IFoodService {
	List<FoodDto> findFoodById(int seq)throws Exception;
	List<FoodDto> findFoodByName(String name)throws Exception;
	List<FoodDto> findAllFood()throws Exception;
	
	PageDto findFoodById(int seq, String p) throws Exception;
	PageDto findFoodByName(String name, String p) throws Exception;
	PageDto findAllFood(String p) throws Exception;
	FoodDto getFood(String rnum)throws Exception;
}
