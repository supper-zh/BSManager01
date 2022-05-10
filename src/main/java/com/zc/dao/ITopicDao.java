package com.zc.dao;

import com.zc.entity.Topic;

import java.util.List;

/**
 * @date 2018-4-12
 * @author zhangC
 * 获得所有的已选课题信息
 * 根据学生id获得选题信息
 * 添加选题信息
 * 根据学生id 删除选题信息
 * 
 */

public interface ITopicDao {
	
	List<Topic> showAllTopic();
	
	Topic topicByStudentId(int studentId);
	
	int addTopic(Topic topic);
	
	int deleteTopic(int studentId);

	//返回值是topic表的查询结果期望是一个topic而不是集合topic
	Topic getInfoByThesisId(int thesisId);
	
	
}
