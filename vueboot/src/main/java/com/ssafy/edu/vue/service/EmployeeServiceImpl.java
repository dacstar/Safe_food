package com.ssafy.edu.vue.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssafy.edu.vue.dao.SSAFyDaoImpl;
import com.ssafy.edu.vue.dto.AnswerDto;
import com.ssafy.edu.vue.dto.DepCountDto;
import com.ssafy.edu.vue.dto.DepartmentDto;
import com.ssafy.edu.vue.dto.EmployeeDto;
import com.ssafy.edu.vue.dto.NoticeDto;
import com.ssafy.edu.vue.dto.QnADto;
import com.ssafy.edu.vue.dto.QuestionDto;


@Service
public class EmployeeServiceImpl implements EmployeeService {
	
    @Autowired
	private SSAFyDaoImpl employeeDao;

    @Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findAllEmployees() throws Exception {
		return employeeDao.findAllEmployees();
	}
    
    @Override
	@Transactional(readOnly=true)
	public int getEmployeesTotal() throws Exception {
		return employeeDao.getEmployeesTotal();
	}

    @Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findLikeEmployees(String name) throws Exception {
    	return employeeDao.findLikeEmployees(name);
	}

	@Override
	@Transactional
	public int addEmployee(EmployeeDto emp) throws Exception {
		//나중에 auto로 바꾸기
		emp.setId(employeeDao.findAfterAdd()+1);
		employeeDao.addEmployee(emp);
		return employeeDao.findAfterAdd();
	}

	@Override
	@Transactional(readOnly=true)
	public List<DepartmentDto> findAllDepartments() throws Exception {
		return employeeDao.findAllDepartments();
	}

	@Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findAllTitles() throws Exception {
		return employeeDao.findAllTitles();
	}

	@Override
	@Transactional(readOnly=true)
	public EmployeeDto findEmployeeById(int id) throws Exception {
		return employeeDao.findEmployeeById(id);
	}

	@Override
	@Transactional
	public boolean updateEmployee(EmployeeDto emp) throws Exception {
		return employeeDao.updateEmployee(emp);
	}

	@Override
	@Transactional
	public boolean deleteEmployee(int id) throws Exception {
		return employeeDao.deleteEmployee(id);
	}

	@Override
	@Transactional(readOnly=true)
	public List<DepCountDto> findAllDepCounts() throws Exception {
		return employeeDao.findAllDepCounts();
	}

	@Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findEmployeesByManagerId(int managerId) throws Exception {
		return employeeDao.findEmployeesByManagerId(managerId);
	}

	@Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findDepartmentsBydeptid(int dept_id) throws Exception {
		return employeeDao.findDepartmentsBydeptid(dept_id);
	}

	@Override
	@Transactional(readOnly=true)
	public List<EmployeeDto> findDepartmentsByname(String name) throws Exception {
		return employeeDao.findDepartmentsByname(name);
	}



	@Override
	@Transactional
	public List<QnADto> findAllQuestion() throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findAllQuestion();
	}

	@Override
	@Transactional
	public int addQuestion(QnADto dto) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.addQuestion(dto);
	}

	@Override
	public QnADto findLikeQuestion(int qnum) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findLikeQuestion(qnum);
	}

	@Override
	public int addAnswer(QnADto dto) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.addAnswer(dto);
	}

	@Override
	public List<NoticeDto> findAllNotice() throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findAllNotice();
	}

	@Override
	public int addN(NoticeDto dto) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.addN(dto);
	}

	@Override
	public boolean deleteQ(int num) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.deleteQ(num);
	}

	@Override
	public NoticeDto findAllNot(int num) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findAllNot(num);
	}

	@Override
	public List<AnswerDto> findAllAns(int num) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findAllAns(num);
	}

	@Override
	public void addAns(AnswerDto dto) throws Exception {
		// TODO Auto-generated method stub
		
		employeeDao.addAns(dto);
		
	}

	@Override
	public List<QuestionDto> findAllQ() throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findAllQ();
	}

	@Override
	public QuestionDto findOneQ(int num) throws Exception {
		// TODO Auto-generated method stub
		return employeeDao.findOneQ(num);
	}

	@Override
	public void addQ(QuestionDto dto) throws Exception {
		// TODO Auto-generated method stub
		employeeDao.addQ(dto);
	}

	@Override
	public void updateQ(QuestionDto dto) throws Exception {
		// TODO Auto-generated method stub
		employeeDao.updateQ(dto);
	}

	@Override
	public void deleteAns(int num) throws Exception {
		// TODO Auto-generated method stub
		employeeDao.deleteAns(num);
	}

	@Override
	public void deleteN(int num) throws Exception {
		// TODO Auto-generated method stub
		
		employeeDao.deleteN(num);
		
	}


	
}
