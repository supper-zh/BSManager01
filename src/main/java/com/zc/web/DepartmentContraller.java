package com.zc.web;

import com.alibaba.fastjson.JSONArray;
import com.zc.entity.Department;
import com.zc.service.IDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.List;


/**
 * 
 * @author zhangC
 * 
 * showAllDep() 显示所以院系信息
 *
 */

@Controller

public class DepartmentContraller {
	
	@Autowired
	private IDepartmentService departmentService;
	
	@RequestMapping(value="/getAllPartment")
	public String showAllDep(HttpServletResponse response,HttpServletRequest request) throws Exception {
		List<Department> departments = departmentService.allDepartment();
		//request.setAttribute("departments", departments);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter write = response.getWriter();
		write.write(JSONArray.toJSONString(departments));
		write.close();
		return "admin/adminTeacherAdd.jsp";
	}
}
