package com.zc.dao;

import com.zc.entity.Zhiyuan;

import java.util.List;
import java.util.Map;

/**
 * @date 2018-4-12
 * @author zhangC
 * 获得所有的已选课题信息
 * 根据学生id获得选题信息
 * 添加选题信息
 * 根据学生id 删除选题信息
 * 
 */

public interface IZhiyuanDao {
	
	List<Map> showAllZhiyuan(int teacherId);
	
	Zhiyuan zhiyuanByStudentId(int studentId);
	
	int addZhiyuan(Zhiyuan zhiyuan);
	
	int deleteZhiyuan(int studentId);
	
	Zhiyuan getInfoByThesisId(int thesisId);
	
	
}
