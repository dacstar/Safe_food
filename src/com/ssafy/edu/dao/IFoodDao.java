package com.ssafy.edu.dao;

import java.util.List;

import com.ssafy.edu.dto.FoodDto;
import com.ssafy.edu.dto.PageDto;


public interface IFoodDao {
	
	List<FoodDto> findFoodById(int seq);
	List<FoodDto> findFoodByName(String name);
	List<FoodDto> findAllFood();
	
	PageDto findFoodById(int seq, String p);
	PageDto findFoodByName(String name, String p);
	PageDto findAllFood(String p);
	FoodDto getFood(String rnum);
	
}
