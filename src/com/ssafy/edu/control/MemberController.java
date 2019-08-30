package com.ssafy.edu.control;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.edu.dto.MemberDto;
import com.ssafy.edu.dto.YesMember;
import com.ssafy.edu.service.IMemberService;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	IMemberService iMemberService;
	
	//회원가입을 시도하면 //무쓸모?
	@RequestMapping(value = "signUpbf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String signUpbf(Model model) throws Exception {
		logger.debug("----------signUpbf------------");
		return "index";
	}

	
	//회원가입 서류를 제출했다면
	@RequestMapping(value = "signUpaf.do", method = RequestMethod.POST)
	public String signUpaf(@ModelAttribute MemberDto memberdto, Model model, HttpSession session) {
		logger.debug("----------signUpaf------------");
		try {
			iMemberService.signUp(memberdto);
		} catch (Exception e) {
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
		}
		return "index";
	}

	
	//로그인 하려했다면
	@RequestMapping(value = "logInbf.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String logInbf(@ModelAttribute MemberDto memberdto, Model model) throws Exception {
		logger.debug("----------logInbf------------");
		return "index";
	}

	//로그인 서류를 제출해서 여기 왔다면
	@RequestMapping(value = "logInaf.do", method = RequestMethod.POST)
	public String loginaf(@ModelAttribute MemberDto memberdto, Model model, HttpSession session) throws Exception {
		logger.debug("----------logInaf------------");
		String path = "redirect:/";

		try {
			MemberDto logindto = iMemberService.logIn(memberdto);
			if (logindto == null || logindto.getM_id() == null) {
				throw new Exception("login fail");
			}
			session.setAttribute("login", logindto);
			session.setMaxInactiveInterval(10 * 60);
			path = "index";
		} catch (Exception e) {
			path = "redirect:/signUpbf.do";
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
		}
		return path;
	}
	
	//로그아웃을 한다면
	@RequestMapping(value = "logout.do", method = RequestMethod.GET)
	public String logout(Model model, HttpSession session) throws Exception{
		logger.debug("----------logout------------");
		session.invalidate();		
		return "index";
	}
	
	
	//회원의 이름을 가져와라
	@RequestMapping(value = "getname.do", method = RequestMethod.GET)
	public String getname(HttpSession session, Model model) throws Exception {
		logger.debug("----------getname------------");
		MemberDto memberdto = (MemberDto) session.getAttribute("login");

		try {
			model.addAttribute("member", iMemberService.getName(memberdto.getM_id()));
			logger.debug("Welcome MemberController getname S!" + new Date());

		} catch (Exception e) {
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
		}

		return "booklist";
	}

	
	//정보수정
	@RequestMapping(value = "modifyme.do", method = RequestMethod.POST)
	public String modifyaf(@ModelAttribute MemberDto memberDto, Model model, HttpSession session) throws Exception {
		logger.debug("----------modifyme------------");

		//TODO 한글이 깨짐
		try {
			String[] tAllergy = memberDto.getAllergy();
			for (int i = 0; i < tAllergy.length; i++) {
				if (tAllergy[i].equals("메밀")) {
					memberDto.setBuckwheat(1);
				} else if (tAllergy[i].equals("밀")) {
					memberDto.setWheat(1);
				} else if (tAllergy[i].equals("콩")) {
					memberDto.setBean(1);
				} else if (tAllergy[i].equals("갑각류")) {
					memberDto.setSellfish(1);
					;
				} else if (tAllergy[i].equals("우유")) {
					memberDto.setMilk(1);
				} else if (tAllergy[i].equals("돼지고기")) {
					memberDto.setPork(1);
				} else if (tAllergy[i].equals("달걀흰자")) {
					memberDto.setEggwhite(1);
				} else if (tAllergy[i].equals("복숭아")) {
					memberDto.setPeach(1);
				} else if (tAllergy[i].equals("소고기")) {
					memberDto.setBeef(1);
				} else if (tAllergy[i].equals("굴")) {
					memberDto.setOyster(1);
				} else if (tAllergy[i].equals("토마토")) {
					memberDto.setTomato(1);
				}

			}
			iMemberService.modifyMember(memberDto);
		} catch (Exception e) {
			logger.debug("====================ERROR!!!!!=============================");
			logger.debug(""+e);
		}
		return "redirect:/findAllFood.do";
	}//
	
	   @RequestMapping(value = "getID.do", 
		         method = RequestMethod.POST)
		   @ResponseBody
		   public YesMember getID(
		         MemberDto member, Model model) throws Exception {
		      logger.info("Welcome LoginController getID! "+ new Date());
		      int count=iMemberService.getID(member);
		      
		      YesMember yes=new YesMember();
		      if(count>0){
		         yes.setMessage("SUCS");
		      }else{
		         yes.setMessage("FAIL");
		      }
		      return yes;
		   }//
}