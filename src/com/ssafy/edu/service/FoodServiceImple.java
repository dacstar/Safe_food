package com.ssafy.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.edu.dao.FoodDao;
import com.ssafy.edu.dao.IFoodDao;
import com.ssafy.edu.dto.FoodDto;
import com.ssafy.edu.dto.PageDto;

@Service
public class FoodServiceImple implements IFoodService {
	
	@Autowired
	private IFoodDao foodDao;
	
	
	@Override
	@Transactional(readOnly=true)
	public List<FoodDto> findFoodById(int seq) throws Exception {
		return foodDao.findFoodById(seq);
	}

	@Override
	@Transactional(readOnly=true)
	public List<FoodDto> findFoodByName(String name) throws Exception {
		return foodDao.findFoodByName(name);
	}

	@Override
	@Transactional(readOnly=true)
	public List<FoodDto> findAllFood() throws Exception {
		return foodDao.findAllFood();
	}

	@Override
	public PageDto findFoodById(int seq, String p) throws Exception {
		return foodDao.findFoodById(seq, p);
	}

	@Override
	public PageDto findFoodByName(String name, String p) throws Exception {
		return foodDao.findFoodByName(name, p);
	}

	@Override
	public PageDto findAllFood(String p) throws Exception {
		return foodDao.findAllFood(p);
	}

	@Override
	public FoodDto getFood(String rnum)throws Exception {
		return foodDao.getFood(rnum);
	}

}
