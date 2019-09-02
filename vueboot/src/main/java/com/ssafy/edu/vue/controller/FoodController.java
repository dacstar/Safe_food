package com.ssafy.edu.vue.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.edu.vue.dto.AnswerDto;
import com.ssafy.edu.vue.dto.DepCountDto;
import com.ssafy.edu.vue.dto.DepartmentDto;
import com.ssafy.edu.vue.dto.EmployeeDto;
import com.ssafy.edu.vue.dto.NoticeDto;
import com.ssafy.edu.vue.dto.QnADto;
import com.ssafy.edu.vue.dto.QuestionDto;
import com.ssafy.edu.vue.help.BoolResult;
import com.ssafy.edu.vue.help.NumberResult;
import com.ssafy.edu.vue.service.EmployeeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

//http://localhost:8197/humans/swagger-ui.html
@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/api")
@Api(value="SSAFY", description="SSAFY Resouces Management 2019")
public class FoodController {
	
	public static final Logger logger = LoggerFactory.getLogger(FoodController.class);
	
	@Autowired
	private EmployeeService  employeeService; 

    @ApiOperation(value = "질문 정보 가져오기", response = List.class)
	@RequestMapping(value = "/findAllQuestion", method = RequestMethod.GET)
	public ResponseEntity<List<QnADto>> findAllQuestion() throws Exception {
		logger.info("1-------------findAllQuestion-----------------------------"+new Date());
		List<QnADto> qs = employeeService.findAllQuestion();
		if (qs.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<QnADto>>(qs, HttpStatus.OK);
	}
    
    
    @ApiOperation(value = "공지사항 목록 가져오기", response = List.class)
	@RequestMapping(value = "/findAllNotice", method = RequestMethod.GET)
	public ResponseEntity<List<NoticeDto>> findAllNotice() throws Exception {
		logger.info("1-------------findAllNotice-----------------------------"+new Date());
		List<NoticeDto> qs = employeeService.findAllNotice();
		if (qs.isEmpty()) {
			return new ResponseEntity(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<NoticeDto>>(qs, HttpStatus.OK);
	}
    


    @ApiOperation(value = " 새로운 사원을 정보를 입력한다. 그리고 그 사원의 사원번호를 반환한다.", response = NumberResult.class)
   	@RequestMapping(value = "/addQuestion", method = RequestMethod.POST)
   	public ResponseEntity<NumberResult> addQuestion(@RequestBody QnADto dto) throws Exception {
   		logger.info("5-------------addQuestion-----------------------------"+new Date());
   		logger.info("5-------------addQuestion-----------------------------"+dto);
   		int total = employeeService.addQuestion(dto);
   		NumberResult nr=new NumberResult();
   		nr.setCount(total);
   		nr.setName("addQuestion");
   		nr.setState("succ");
   		logger.info("5-------------addQuestion-------id------------------"+total);
   		if (total<=0) {
   			nr.setCount(-1);
   	   		nr.setName("addEmployee");
   	   		nr.setState("fail");
   			//return new ResponseEntity(HttpStatus.NO_CONTENT);
   			return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   		}
   		return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   	}
    
    @ApiOperation(value = " A를 입력한다.", response = NumberResult.class)
   	@RequestMapping(value = "/addAnswer", method = RequestMethod.POST)
   	public ResponseEntity<NumberResult> addAnswer(@RequestBody QnADto dto) throws Exception {
   		logger.info("1------------addAnswer-----------------------------"+new Date());
   		logger.info("2-------------addAnswer-----------------------------"+dto);
   		int total = employeeService.addAnswer(dto);
   		NumberResult nr=new NumberResult();
   		nr.setCount(total);
   		nr.setName("addAnswer");
   		nr.setState("succ");
   		logger.info("3-------------addQuestion-------id------------------"+total);
   		if (total<=0) {
   			nr.setCount(-1);
   	   		nr.setName("addAnswer");
   	   		nr.setState("fail");
   			//return new ResponseEntity(HttpStatus.NO_CONTENT);
   			return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   		}
   		return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   	}
    
    @ApiOperation(value = "이름의 일부분에 해당하는 질문의 정보를 반환한다.", response = QnADto.class)
  	@RequestMapping(value = "/findLikeQuestion/{qnum}", method = RequestMethod.GET)
  	public ResponseEntity<QnADto> findLikeQuestion(@PathVariable int qnum) throws Exception {
  		logger.info("3-------------findLikeQuestion-----------------------------"+new Date());
  		QnADto qs = employeeService.findLikeQuestion(qnum);
  		System.out.println(qs.toString());
  		if (qs == null) {
  			return new ResponseEntity(HttpStatus.NO_CONTENT);
  		}
  		return new ResponseEntity<QnADto>(qs, HttpStatus.OK);
  	}
    
    @ApiOperation(value = " 공지사항 등록", response = NumberResult.class)
   	@RequestMapping(value = "/addN", method = RequestMethod.POST)
   	public ResponseEntity<NumberResult> addN(@RequestBody NoticeDto dto) throws Exception {
   		logger.info("1-------------addN-----------------------------"+new Date());
   		logger.info("2-------------addN-----------------------------"+dto);
   		int total = employeeService.addN(dto);
   		NumberResult nr=new NumberResult();
   		nr.setCount(total);
   		nr.setName("addN");
   		nr.setState("succ");
   		logger.info("3-------------addN-------id------------------"+total);
   		if (total<=0) {
   			nr.setCount(-1);
   	   		nr.setName("addN");
   	   		nr.setState("fail");
   			//return new ResponseEntity(HttpStatus.NO_CONTENT);
   			return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   		}
   		return new ResponseEntity<NumberResult>(nr, HttpStatus.OK);
   	}
 
    @ApiOperation(value = "삭제", response = BoolResult.class)
   	@RequestMapping(value = "/deleteQ/{num}", method = RequestMethod.POST)
   	public ResponseEntity<BoolResult> deleteQ(@PathVariable int num) throws Exception {
   		logger.info("1-------------deleteQ-----------------------------"+new Date());
   		logger.info("1-------------deleteQ-----------------------------");
   		
   		boolean total = employeeService.deleteQ(num);
   		BoolResult nr=new BoolResult();
   		nr.setCount(total);
   		nr.setName("deleteQ");
   		nr.setState("succ");
   		if (!total) {
   			return new ResponseEntity(HttpStatus.NO_CONTENT);
   		}
   		return new ResponseEntity<BoolResult>(nr, HttpStatus.OK);
   	}
    
    /*
    @ApiOperation(value = " 사원의 정보를 수정한다 만약 사원의 부서와 업무가 변경되면 잡히스토리에  자동(trigger)으로 추가된다. 원래 put이다.", response = BoolResult.class)
   	@RequestMapping(value = "/updateEmployee", method = RequestMethod.POST)
   	public ResponseEntity<BoolResult> updateEmployee(@RequestBody EmployeeDto dto) throws Exception {
   		logger.info("1-------------updateEmployee-----------------------------"+new Date());
   		logger.info("1-------------updateEmployee-----------------------------"+dto);
   		boolean total = employeeService.updateEmployee(dto);
   		BoolResult nr=new BoolResult();
   		nr.setCount(total);
   		nr.setName("updateEmployee");
   		nr.setState("succ");
   		if (!total) {
   			return new ResponseEntity(HttpStatus.NO_CONTENT);
   		}
   		return new ResponseEntity<BoolResult>(nr, HttpStatus.OK);
   	}
  */
    
    @ApiOperation(value = "글번호와 일치하는 답변목록을 반환한다.", response = NoticeDto.class)
    @RequestMapping(value = "/findAllNot/{num}", method = RequestMethod.GET)
    public ResponseEntity<NoticeDto> findAllNot(@PathVariable int num) throws Exception {
       logger.info("1-------------findAllNot-----------------------------"+new Date());
       NoticeDto ques = employeeService.findAllNot(num);
       if (ques== null) {
          return new ResponseEntity(HttpStatus.NO_CONTENT);
       }
       return new ResponseEntity<NoticeDto>(ques, HttpStatus.OK);
    }
    
    @ApiOperation(value = "글번호와 일치하는 질문을 반환한다.", response = List.class)
   @RequestMapping(value = "/findAllAns/{num}", method = RequestMethod.GET)
   public ResponseEntity<List<AnswerDto>> findAllAns(@PathVariable int num) throws Exception {
      logger.info("7-------------findAllAns-----------------------------"+new Date());
      List<AnswerDto> ques = employeeService.findAllAns(num);
      if (ques.isEmpty()) {
         return new ResponseEntity(HttpStatus.NO_CONTENT);
      }
      return new ResponseEntity<List<AnswerDto>>(ques, HttpStatus.OK);
   }
    
    
    @ApiOperation(value = "모든 질문글의 정보를 반환한다.", response = List.class)
    @RequestMapping(value = "/findAllQ", method = RequestMethod.GET)
    public ResponseEntity<List<QuestionDto>> findAllQ() throws Exception {
       logger.info("7-------------findAllQ-----------------------------"+new Date());
       List<QuestionDto> ques = employeeService.findAllQ();
       if (ques.isEmpty()) {
          return new ResponseEntity(HttpStatus.NO_CONTENT);
       }
       return new ResponseEntity<List<QuestionDto>>(ques, HttpStatus.OK);
    }
     
     @ApiOperation(value = "해당 번호를 갖는 질문글의 정보를 반환한다.", response = QuestionDto.class)
    @RequestMapping(value = "/findOneQ/{num}", method = RequestMethod.GET)
    public ResponseEntity<QuestionDto> findOneQ(@PathVariable int num) throws Exception {
       logger.info("7-------------findOneQ-----------------------------"+new Date());
       QuestionDto ques = employeeService.findOneQ(num);
       if (ques==null) {
          return new ResponseEntity(HttpStatus.NO_CONTENT);
       }
       return new ResponseEntity<QuestionDto>(ques, HttpStatus.OK);
    }
     
     @ApiOperation(value = " 새로운 게시글을 등록한다.", response = NumberResult.class)
       @RequestMapping(value = "/addQ", method = RequestMethod.POST)
       public ResponseEntity<NumberResult> addQ(@RequestBody QuestionDto dto) throws Exception {
          logger.info("7-------------addQ-----------------------------"+new Date());
          employeeService.addQ(dto);
          return new ResponseEntity(HttpStatus.NO_CONTENT);
       }
     
     @ApiOperation(value = " 게시글을 수정한다.", response = BoolResult.class)
       @RequestMapping(value = "/updateQ", method = RequestMethod.POST)
       public ResponseEntity<BoolResult> updateQ(@RequestBody QuestionDto dto) throws Exception {
          logger.info("7-------------updateQ-----------------------------"+new Date());
          employeeService.updateQ(dto);
          return new ResponseEntity(HttpStatus.NO_CONTENT);
       }
     
     @ApiOperation(value = " 게시글을 삭제한다.", response = BoolResult.class)
    @RequestMapping(value = "/deleteN/{num}", method = RequestMethod.POST)
    public ResponseEntity<BoolResult> deleteN(@PathVariable int num) throws Exception {
       logger.info("7-------------deleteQ-----------------------------"+new Date());
       employeeService.deleteN(num);
       employeeService.deleteAns(num);
       return new ResponseEntity(HttpStatus.NO_CONTENT);

     }
    

    
}
