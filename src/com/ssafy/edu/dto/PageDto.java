package com.ssafy.edu.dto;

import java.util.List;

import com.ssafy.edu.dto.FoodDto;

public class PageDto {
	private List<FoodDto> list;
	private int page;
	private int startPage;
	private int endPage;
	private int totalPage;
	
	/////////////////////////////
	public PageDto() { 	}

	public PageDto(List<FoodDto> list, int page, int startPage, int endPage, int totalPage) {
		this.list = list;
		this.page = page;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPage = totalPage;
	}
	/////////////////////////////

	public List<FoodDto> getList() {
		return list;
	}

	public void setList(List<FoodDto> list) {
		this.list = list;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	@Override
	public String toString() {
		return "PageDto [list=" + list + ", page=" + page + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", totalPage=" + totalPage + "]";
	}
	
	
	
	
}
