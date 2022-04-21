package com.zc.entity;

import java.util.Date;

public class Student {
	
	private int id;
	private String studentNo;
	private String studentName;
	private String sex;
	private int majorId;
	private String grade;
	private String inputMan;
	private Date lastModifyTime;
	private String phone;
	private String email;
	private String majorName;
	
	private String thesisName;
	private String studentOpeningPath;
	private String studentOpeningName;
	private String studentKexingPath;
	private String studentKexingName;
	private String studentXuqiuPath;
	private String studentXuqiuName;
	private String studentGaiyaoPath;
	private String studentGaiyaoName;
	private String studentShujukuPath;
	private String studentShujukuName;
	private int completion;
	private String completionName;
	private String openscore;
	private String kexingscore;
	private String xuqiuscore;
	private String gaiyaoscore;
	private String shujukuscore;
	
	private String fileName;
	private String filePath;
	
	private int thesisScore;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(String studentNo) {
		this.studentNo = studentNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getMajorId() {
		return majorId;
	}
	public void setMajorId(int majorId) {
		this.majorId = majorId;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getInputMan() {
		return inputMan;
	}
	public void setInputMan(String inputMan) {
		this.inputMan = inputMan;
	}
	
	public Date getLastModifyTime() {
		return lastModifyTime;
	}
	public void setLastModifyTime(Date lastModifyTime) {
		this.lastModifyTime = lastModifyTime;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}
	public String getThesisName() {
		return thesisName;
	}
	public void setThesisName(String thesisName) {
		this.thesisName = thesisName;
	}
	
	public String getStudentOpeningPath() {
		return studentOpeningPath;
	}
	public void setStudentOpeningPath(String studentOpeningPath) {
		this.studentOpeningPath = studentOpeningPath;
	}
	
	public String getStudentOpeningName() {
		return studentOpeningName;
	}
	public void setStudentOpeningName(String studentOpeningName) {
		this.studentOpeningName = studentOpeningName;
	}
	
	
	
	public String getStudentKexingPath() {
		return studentKexingPath;
	}
	public void setStudentKexingPath(String studentKexingPath) {
		this.studentKexingPath = studentKexingPath;
	}
	public String getStudentKexingName() {
		return studentKexingName;
	}
	public void setStudentKexingName(String studentKexingName) {
		this.studentKexingName = studentKexingName;
	}
	public String getStudentXuqiuPath() {
		return studentXuqiuPath;
	}
	public void setStudentXuqiuPath(String studentXuqiuPath) {
		this.studentXuqiuPath = studentXuqiuPath;
	}
	public String getStudentXuqiuName() {
		return studentXuqiuName;
	}
	public void setStudentXuqiuName(String studentXuqiuName) {
		this.studentXuqiuName = studentXuqiuName;
	}
	public String getStudentGaiyaoPath() {
		return studentGaiyaoPath;
	}
	public void setStudentGaiyaoPath(String studentGaiyaoPath) {
		this.studentGaiyaoPath = studentGaiyaoPath;
	}
	public String getStudentGaiyaoName() {
		return studentGaiyaoName;
	}
	public void setStudentGaiyaoName(String studentGaiyaoName) {
		this.studentGaiyaoName = studentGaiyaoName;
	}
	public String getStudentShujukuPath() {
		return studentShujukuPath;
	}
	public void setStudentShujukuPath(String studentShujukuPath) {
		this.studentShujukuPath = studentShujukuPath;
	}
	public String getStudentShujukuName() {
		return studentShujukuName;
	}
	public void setStudentShujukuName(String studentShujukuName) {
		this.studentShujukuName = studentShujukuName;
	}
	public int getCompletion() {
		return completion;
	}
	public void setCompletion(int completion) {
		this.completion = completion;
	}
	
	public String getCompletionName() {
		return completionName;
	}
	public void setCompletionName(String completionName) {
		this.completionName = completionName;
	}
	
	
	public String getOpenscore() {
		return openscore;
	}
	public void setOpenscore(String openscore) {
		this.openscore = openscore;
	}
	public String getKexingscore() {
		return kexingscore;
	}
	public void setKexingscore(String kexingscore) {
		this.kexingscore = kexingscore;
	}
	public String getXuqiuscore() {
		return xuqiuscore;
	}
	public void setXuqiuscore(String xuqiuscore) {
		this.xuqiuscore = xuqiuscore;
	}
	public String getGaiyaoscore() {
		return gaiyaoscore;
	}
	public void setGaiyaoscore(String gaiyaoscore) {
		this.gaiyaoscore = gaiyaoscore;
	}
	public String getShujukuscore() {
		return shujukuscore;
	}
	public void setShujukuscore(String shujukuscore) {
		this.shujukuscore = shujukuscore;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	
	public int getThesisScore() {
		return thesisScore;
	}
	public void setThesisScore(int thesisScore) {
		this.thesisScore = thesisScore;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentNo=" + studentNo + ", studentName=" + studentName + ", sex=" + sex
				+ ", majorId=" + majorId + ", grade=" + grade + ", inputMan=" + inputMan + ", lastModifyTime="
				+ lastModifyTime + ", phone=" + phone + ", majorName=" + majorName + ", thesisName=" + thesisName
				+ ", studentOpeningPath=" + studentOpeningPath + ", studentOpeningName=" + studentOpeningName
				+ ", completion=" + completion + ", completionName=" + completionName + ", fileName=" + fileName
				+ ", filePath=" + filePath + ", thesisScore=" + thesisScore + "]";
	}
	
	
	

	
	
	
	
	
	




	
	
	
	
}
