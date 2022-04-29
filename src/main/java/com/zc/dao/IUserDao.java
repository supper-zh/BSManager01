package com.zc.dao;

import com.zc.entity.User;
import org.apache.ibatis.annotations.Param;

/**
 * @date 2022-4-28
 * @author zhangh
 * 查询用户信息 根据id
 * 查询登陆信息 根据页面给定的 userNo和password
 * 获得用户密码
 * 修改密码
 */

public interface IUserDao {
	
	User queryById(int id);

	//用户登录：传入所要查询的用户的信息（userNo,password)，返回查询到的用户
	User login(User user);
	
	User getPassword(String userNo);
	
	int modifyPassword(@Param("userNo") String userNo, @Param("password") String password);
}
