package com.zc.entity;

import java.util.Date;

public class ThesisTitle {

	private int id;
	private String thesisName;
	private int teacherId;
	private Date submitTime;//提交时间
	private int status;//课题状态
	private String inputMan;
	private String description;//课题描述
	private String nandu;// 	课题难度
	private String liang;//课题工作量
	private String from;//课题来源
	private String leixing;//课题类型
	
	private String statusName;
	
	public ThesisTitle() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getThesisName() {
		return thesisName;
	}

	public void setThesisName(String thesisName) {
		this.thesisName = thesisName;
	}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	

	public Date getSubmitTime() {
		return submitTime;
	}

	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getInputMan() {
		return inputMan;
	}

	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}
	
	

	public String getNandu() {
		return nandu;
	}

	public void setNandu(String nandu) {
		this.nandu = nandu;
	}

	public String getLiang() {
		return liang;
	}

	public void setLiang(String liang) {
		this.liang = liang;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getLeixing() {
		return leixing;
	}

	public void setLeixing(String leixing) {
		this.leixing = leixing;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	@Override
	public String toString() {
		return "ThesisTitle [id=" + id + ", thesisName=" + thesisName + ", teacherId=" + teacherId + ", submitTime="
				+ submitTime + ", status=" + status + ", inputMan=" + inputMan + ", description=" + description
				+ ", statusName=" + statusName + "]";
	}


		
	
}
