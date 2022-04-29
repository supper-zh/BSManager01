package com.zc.entity;

public class User {
	private int id;
	private String userNo; // 用户编号，用户名
	private String password;
	private int permission;  //用户权限
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", password=" + password + ", permission=" + permission + "]";
	}
	
	
	
}
