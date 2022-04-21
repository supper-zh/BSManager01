package com.zc.dao;

import com.zc.entity.Major;

import java.util.List;

/**
 * @date 2018-4-10
 * @author zhangC
 * 查询全部的专业；
 * id ==> name
 * name ==> id
 * 根据name获得id
 * 
 */

public interface IMajorDao {
	
	List<Major> getAllMajor();
	
	String getNameByID(int id);
	
	int getIdByName(String name);
	
	
}
