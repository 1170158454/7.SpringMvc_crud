package com.atguigu.springmvc.crud.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.atguigu.springmvc.crud.dao.DepartmentDao;
import com.atguigu.springmvc.crud.dao.EmployeeDao;
import com.atguigu.springmvc.crud.entities.Department;
import com.atguigu.springmvc.crud.entities.Employee;


@Controller
public class MyController {
	@Autowired 
	EmployeeDao employeeDao;
	@Autowired
	DepartmentDao departmentDao;  
	 
	public MyController() {
		// TODO Auto-generated constructor stub
	}
	
	//展示所有员工
	@RequestMapping("/emps")
	public String getEmps(Model model){
		Collection<Employee> collection = employeeDao.getAll();
		model.addAttribute("list",collection);
		return "list";
	}
	
	
	//前往添加页面
	@RequestMapping("/toaddpage")
	public String toadd(Model model){
		Collection<Department> collection = departmentDao.getDepartments();
		model.addAttribute("departments",collection);
		model.addAttribute("employee",new Employee());
		return "empadd";
	}
	
	//新建save
	@RequestMapping(value="/emp",method=RequestMethod.POST)
	public String addEmps(Employee employee){
		System.out.println(employee);
		employeeDao.save(employee);
		return "redirect:/emps";
	}
	
	
	//编辑页面
	@RequestMapping(value="/emp/{id}",method=RequestMethod.GET)
	public String toeditEmps(@PathVariable("id")Integer id,Model model){
		Collection<Department> collection = departmentDao.getDepartments();
		model.addAttribute("departments",collection);
		model.addAttribute("employee",employeeDao.get(id));
		return "empedit";
	}
	
	
	//提交编辑
	@RequestMapping(value="/emp/{id}",method=RequestMethod.PUT)
	public String editEmps(Employee employee,@PathVariable("id")Integer id){
		System.out.println(employee);
		return "redirect:/emps";
	}
	
	@ModelAttribute
	public void getEmp(@PathVariable("id")Integer id){
		
		System.out.println(id);
		
	}
	
	

}
