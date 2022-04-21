package com.zc.service;

import com.zc.entity.Department;

import java.util.List;

/**
 * 
 * @author zhangC
 * 
 * 显示院系列表
 * 根据id获得院系name
 * 根据name获得院系id
 * 
 *
 */

public interface IDepartmentService {
	List<Department> allDepartment();
	
	String getNameById(int id);
	
	int getIdByName(String departmentName);
}
