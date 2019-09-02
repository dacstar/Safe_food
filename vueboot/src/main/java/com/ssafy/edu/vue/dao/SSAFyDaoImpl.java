package com.ssafy.edu.vue.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ssafy.edu.vue.dto.AnswerDto;
import com.ssafy.edu.vue.dto.DepCountDto;
import com.ssafy.edu.vue.dto.DepartmentDto;
import com.ssafy.edu.vue.dto.EmployeeDto;
import com.ssafy.edu.vue.dto.NoticeDto;
import com.ssafy.edu.vue.dto.QnADto;
import com.ssafy.edu.vue.dto.QuestionDto;
@Repository
public class SSAFyDaoImpl implements HrmMapper{
	
    private String ns="com.ssafy.edu.vue.dao.HrmMapper.";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<EmployeeDto> findAllEmployees() throws Exception {
		return sqlSession.selectList(ns+"findAllEmployees");
	}
	
	@Override
	public int getEmployeesTotal() throws Exception{
		return sqlSession.selectOne(ns+"getEmployeesTotal");
	}

	@Override
	public List<EmployeeDto> findLikeEmployees(String name) throws Exception {
		return sqlSession.selectList(ns+"findLikeEmployees",name);
	}

	@Override
	public void addEmployee(EmployeeDto emp) throws Exception {
		sqlSession.insert(ns+"addEmployee",emp);
	}

	@Override
	public List<DepartmentDto> findAllDepartments() throws Exception {
		return sqlSession.selectList(ns+"findAllDepartments");
	}

	@Override
	public int findAfterAdd() throws Exception{
		return sqlSession.selectOne(ns+"findAfterAdd");
	}

	@Override
	public List<EmployeeDto> findAllTitles() throws Exception {
		return sqlSession.selectList(ns+"findAllTitles");
	}

	@Override
	public EmployeeDto findEmployeeById(int id) throws Exception {
		return sqlSession.selectOne(ns+"findEmployeeById",id);
	}

	@Override
	public boolean updateEmployee(EmployeeDto emp) throws Exception {
		 sqlSession.update(ns+"updateEmployee",emp);
		 return true;
	}

	@Override
	public boolean deleteEmployee(int id) throws Exception {
		sqlSession.delete(ns+"deleteEmployee",id);
		 return true;
	}

	@Override
	public List<DepCountDto> findAllDepCounts() throws Exception {
		return sqlSession.selectList(ns+"findAllDepCounts");
	}

	@Override
	public List<EmployeeDto> findEmployeesByManagerId(int managerId) throws Exception {
		return sqlSession.selectList(ns+"findEmployeesByManagerId",managerId);
	}

	@Override
	public List<EmployeeDto> findDepartmentsBydeptid(int dept_id) throws Exception {
		return sqlSession.selectList(ns+"findDepartmentsBydeptid",dept_id);
	}

	@Override
	public List<EmployeeDto> findDepartmentsByname(String name) throws Exception {
		return sqlSession.selectList(ns+"findDepartmentsByname",name);
	}



	@Override
	public List<QnADto> findAllQuestion() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"findAllQuestion");
	}

	@Override
	public int addQuestion(QnADto dto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(ns+"addQuestion",dto);
	}
	@Override
	public QnADto findLikeQuestion(int qnum) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns+"findLikeQuestion", qnum);
	}
	@Override
	public int addAnswer(QnADto dto) {
		// TODO Auto-generated method stub
		return sqlSession.update(ns+"addAnswer",dto);
	}
	@Override
	public List<NoticeDto> findAllNotice() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"findAllNotice");
	}
	@Override
	public int addN(NoticeDto dto) {
		// TODO Auto-generated method stub
		return sqlSession.insert(ns+"addN",dto);
	}

	public boolean deleteQ(int num) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns+"deleteQ",num);
		return true;
	}

	public NoticeDto findAllNot(int num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns+"findAllNot",num);
	}

	public List<AnswerDto> findAllAns(int num) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"findAllAns",num);
	}



	public void addAns(AnswerDto dto) {
		// TODO Auto-generated method stub
		 sqlSession.insert(ns+"addAns",dto);
	}

	public List<QuestionDto> findAllQ() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(ns+"findAllQ");
	}

	public QuestionDto findOneQ(int num) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(ns+"findOneQ",num);
	}

	public void addQ(QuestionDto dto) {
		// TODO Auto-generated method stub
		sqlSession.insert(ns+"addQ",dto);
	}

	public void updateQ(QuestionDto dto) {
		// TODO Auto-generated method stub
		sqlSession.update(ns+"updateQ",dto);
	}

	public void deleteAns(int num) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns+"deleteAns",num);
	}

	public void deleteN(int num) {
		// TODO Auto-generated method stub
		sqlSession.delete(ns+"deleteN",num);
	}
	


	
}
