package com.ssafy.edu.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.dto.FoodDto;
import com.ssafy.edu.dto.PageDto;

@Repository
public class FoodDao implements IFoodDao {
	String ns = "com.ssafy.edu.";
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<FoodDto> findFoodById(int seq) {
		return sqlSession.selectList(ns+"findFoodById", seq);
	}

	public List<FoodDto> findFoodByName(String name) {
		return sqlSession.selectList(ns+"findFoodByName", name);
	}

	public List<FoodDto> findAllFood() {
		return sqlSession.selectList(ns+"findAllFood");
	}
	
	@Override
	public FoodDto getFood(String rnum) {
		return (FoodDto)(sqlSession.selectList(ns+"getFood", rnum).get(0));
	}
	
	//////////////////////////////PAGE//////////////////////////////////////////////
	
	int COUNT_PER_PAGE = 6;
	
	//결과가 li에 들어있다. 조회된것들이=> 조회해서 여기로 넘어오기전 order by desc를 해줬다고 보장한다.
	public PageDto makePage(List<FoodDto> li, String p){
		int page = 1;
		if(p != null && p.length()>0) {
			page = Integer.parseInt(p);
		}
		
		//해당 검색 결과 글의 갯수
		int totalCnt = li.size();
		
		//총 몇개의 페이지로 나눠야할까?
		int totalPageCnt = totalCnt/COUNT_PER_PAGE;
		if(totalCnt % COUNT_PER_PAGE != 0) {
			totalPageCnt++;
		}
		
		//지금 페이지를 나눈 단락
		int startRow = (page-1)*COUNT_PER_PAGE;
		List<FoodDto> res = selectList(li, startRow, COUNT_PER_PAGE);
		int startPage = (page-1)/COUNT_PER_PAGE*COUNT_PER_PAGE   +1;
		int endPage = startPage+COUNT_PER_PAGE   -1;
		if(endPage>totalPageCnt) {
			endPage = totalPageCnt;
		}
		
		
		return new PageDto(res, page, startPage, endPage, totalCnt);
	}
	
	//시작 번호부터 cnt갯수만큼 음식 리턴
	public List<FoodDto> selectList(List<FoodDto> li, int startRow, int cnt){
		List<FoodDto> res = new ArrayList<>();
		System.out.println("li size is : "+li.size());
		for(int i =0; i<COUNT_PER_PAGE; i++) {
			if(li.size() > startRow+i) {
				res.add(li.get(startRow+i));
			}
		}

		return res;
	}

	@Override
	public PageDto findFoodById(int seq, String p) {
		List<FoodDto> list = findFoodById(seq);
		return makePage(list, p);
	}

	@Override
	public PageDto findFoodByName(String name, String p) {
		List<FoodDto> list = findFoodByName(name);
		return makePage(list, p);
	}

	@Override
	public PageDto findAllFood(String p) {
		return makePage(findAllFood(), p);
	}
}