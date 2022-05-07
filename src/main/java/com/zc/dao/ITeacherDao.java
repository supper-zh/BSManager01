package com.zc.dao;

import com.zc.entity.Page;
import com.zc.entity.Teacher;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 
 * @date 2018-4-10
 * @author zhangC
 * 添加教师
 * 查询教师 根据id
 * 查询所有教师信息
 * 删除教师
 * 更新教师
 * 查询教师信息 根据 编号、姓名、编号和姓名
 * 
 * @date 2018-4-11
 * @author zhangC
 * 查询教师的信息 根据教师no
 * 
 *
 */
public interface ITeacherDao {
	int addTeacher(Teacher teacher);
	Teacher selectTeacher(int id);
	List<Teacher> showAllTeacher();
	int deleteTeacher(int id);
	int updateTeacher(Teacher teacher);
	List<Teacher> showTeacherOne1(String teacherNo);
	List<Teacher> showTeacherOne2(String teacherName);
	List<Teacher> showTeacherOne3(@Param("teacherNo") String teacherNo,@Param("teacherName") String teacherName);
	
	Teacher teacherInfoByNo(String teacherNo);

	//分页查询展示教师
	List<Teacher> page(@Param("page") Page page);

	Integer count();



}
