package com.zc.dao;

import com.zc.entity.Department;

import java.util.List;

/**
 * @date 2018-4-10
 * @author zhangC
 * 查询全部的院系
 * id ==> name
 * name ==> id
 * 
 */
public interface IDepartmentDao {
	
	List<Department> allDepartment();
	String getNameById(int id);
	int getIdByName(String name);
}
