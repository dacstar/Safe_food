package com.ssafy.edu.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.edu.dto.FoodDto;
import com.ssafy.edu.dto.PageDto;
import com.ssafy.edu.service.IFoodService;

@Controller
public class FoodController{
	private static final Logger logger = LoggerFactory.getLogger(FoodController.class);
	
	@Autowired
	private IFoodService iFoodService;
	
	@RequestMapping(value="index.do",  method= {RequestMethod.GET, RequestMethod.POST})
	public String index(Model model) throws Exception{
		logger.debug("----------index------------");
		return "index";
	}
	
	@RequestMapping(value="findAllFood.do",  method= {RequestMethod.GET, RequestMethod.POST})
	public String findAllFood(Model model, String p) {
		logger.debug("----------find all food----------------");
		try {
			PageDto pd = iFoodService.findAllFood(p);
			
			model.addAttribute("foods", pd.getList());
			model.addAttribute("page", pd.getPage()); //선택한 현재 페이지(하이라이트처리)
			model.addAttribute("startPage", pd.getStartPage()); //페이지단락의 시작
			model.addAttribute("endPage", pd.getEndPage()); //페이지 단락의 끝
			model.addAttribute("totalPage", pd.getTotalPage()); //총 페이지 수 //쓸데가있나싶다
			
			model.addAttribute("parents", "findAllFood.do?");
			logger.debug("----------find all food22222----------------");
			return "index";
		} catch (Exception e) {
			
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
			return "index";
		}
	}
	
	@RequestMapping(value="findFoodByName.do",  method= {RequestMethod.GET, RequestMethod.POST})
	public String findFoodByName(Model model, String name, String p) throws Exception{
		logger.debug("----------------find Food by name-------------");
		
		PageDto pd = iFoodService.findFoodByName(name, p);
		model.addAttribute("foods", pd.getList());
		model.addAttribute("page", pd.getPage()); //선택한 현재 페이지(하이라이트처리)
		model.addAttribute("startPage", pd.getStartPage()); //페이지단락의 시작
		model.addAttribute("endPage", pd.getEndPage()); //페이지 단락의 끝
		model.addAttribute("totalPage", pd.getTotalPage()); //총 페이지 수 //쓸데가있나싶다
		model.addAttribute("parents", "findFoodByName.do?name="+name+"&");
		
		//model.addAttribute("foods", iFoodService.findFoodByName(name));
		return "index";
	}
	
	@RequestMapping(value="findFoodById.do",  method= {RequestMethod.GET, RequestMethod.POST})
	public String findFoodById(Model model, int seq, String p) throws Exception{
		logger.debug("----------------find Food by id-------------");
		
		PageDto pd = iFoodService.findFoodById(seq, p);
		
		model.addAttribute("foods", pd.getList());
		model.addAttribute("page", pd.getPage()); //선택한 현재 페이지(하이라이트처리)
		model.addAttribute("startPage", pd.getStartPage()); //페이지단락의 시작
		model.addAttribute("endPage", pd.getEndPage()); //페이지 단락의 끝
		model.addAttribute("totalPage", pd.getTotalPage()); //총 페이지 수 //쓸데가있나싶다
		model.addAttribute("parents", "findFoodById.do?seq="+seq+"&");
		
		return "index";
	}
	
	@RequestMapping(value="fooddetail.do", method=RequestMethod.GET)
	public String fooddetail(Model model, String rnum) {
		logger.debug("----------------food detail : "+rnum+"-------------");
		
		try {
			FoodDto fd = iFoodService.getFood(rnum);
			logger.debug(fd.toString());
			model.addAttribute("food", fd);
		} catch (Exception e) {
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
			return "index";
		}
		
		return "single-product";
	}
	
}

