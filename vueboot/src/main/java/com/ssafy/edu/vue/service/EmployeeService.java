package com.ssafy.edu.vue.service;

import java.util.List;

import com.ssafy.edu.vue.dto.AnswerDto;
import com.ssafy.edu.vue.dto.DepCountDto;
import com.ssafy.edu.vue.dto.DepartmentDto;
import com.ssafy.edu.vue.dto.EmployeeDto;
import com.ssafy.edu.vue.dto.NoticeDto;
import com.ssafy.edu.vue.dto.QnADto;
import com.ssafy.edu.vue.dto.QuestionDto;

public interface EmployeeService {
	
	public List<EmployeeDto> findAllEmployees() throws Exception;
	public EmployeeDto findEmployeeById(int id) throws Exception;
	public int getEmployeesTotal()throws Exception;
	public List<EmployeeDto> findLikeEmployees(String name) throws Exception;
	
	public int addEmployee(EmployeeDto emp) throws Exception;
	public List<DepartmentDto> findAllDepartments() throws Exception;
	public List<EmployeeDto> findAllTitles() throws Exception;
	
	public boolean updateEmployee(EmployeeDto emp) throws Exception;
	public boolean deleteEmployee(int id) throws Exception;
	
	public List<DepCountDto> findAllDepCounts()throws Exception;
	public List<EmployeeDto>  findEmployeesByManagerId(int managerId)throws Exception;
	
	public List<EmployeeDto> findDepartmentsBydeptid(int dept_id)throws Exception;
	public List<EmployeeDto> findDepartmentsByname(String name)throws Exception;
	public List<QnADto> findAllQuestion() throws Exception;
	public int addQuestion(QnADto dto) throws Exception;
	public QnADto findLikeQuestion(int qnum) throws Exception;
	public int addAnswer(QnADto dto) throws Exception;
	public List<NoticeDto> findAllNotice()  throws Exception;
	public int addN(NoticeDto dto) throws Exception;
	public boolean deleteQ(int num) throws Exception;
	public NoticeDto findAllNot(int num) throws Exception;
	public List<AnswerDto> findAllAns(int num) throws Exception;
	public void addAns(AnswerDto dto) throws Exception;
	public List<QuestionDto> findAllQ()  throws Exception;
	public QuestionDto findOneQ(int num)  throws Exception;
	public void addQ(QuestionDto dto) throws Exception;
	public void updateQ(QuestionDto dto) throws Exception;
	public void deleteAns(int num) throws Exception;
	public void deleteN(int num) throws Exception;
	
	
	
}
