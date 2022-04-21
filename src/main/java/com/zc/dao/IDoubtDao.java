package com.zc.dao;

import com.zc.entity.Doubt;

import java.util.List;

/**
 * @date 2018-5-9
 * @author zhangC
 * 
 * 添加学生提出的疑惑
 * 显示某一学生的所有疑惑
 * 
 * @date 2018-5-10
 * 更新疑惑信息
 *
 */
public interface IDoubtDao {
	
	int addDoubt(Doubt doubt);
	List<Doubt> getAllDoubt(int studentId);
	
	int updateDoubt(Doubt doubt);
	
	
}
