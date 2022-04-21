package com.zc.entity;

public class StudentTaskBookOpening {
	
	private int id;
	private int studentId;
	private String studentOpeningResport;
	private String studentTaskBook;
	private String studentKeXingXing;
	private String studentXuQiu;
	private String studentGaiYao;
	private String studentShuJuKu;
	private String description;
	
	private int completion;
	private String openscore;
	private String kexingscore;
	private String xuqiuscore;
	private String gaiyaoscore;
	private String shujukuscore;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentOpeningResport() {
		return studentOpeningResport;
	}
	public void setStudentOpeningResport(String studentOpeningResport) {
		this.studentOpeningResport = studentOpeningResport;
	}
	public String getStudentTaskBook() {
		return studentTaskBook;
	}
	public void setStudentTaskBook(String studentTaskBook) {
		this.studentTaskBook = studentTaskBook;
	}
	
	public String getStudentKeXingXing() {
		return studentKeXingXing;
	}
	public void setStudentKeXingXing(String studentKeXingXing) {
		this.studentKeXingXing = studentKeXingXing;
	}
	public String getStudentXuQiu() {
		return studentXuQiu;
	}
	public void setStudentXuQiu(String studentXuQiu) {
		this.studentXuQiu = studentXuQiu;
	}
	public String getStudentGaiYao() {
		return studentGaiYao;
	}
	public void setStudentGaiYao(String studentGaiYao) {
		this.studentGaiYao = studentGaiYao;
	}
	public String getStudentShuJuKu() {
		return studentShuJuKu;
	}
	public void setStudentShuJuKu(String studentShuJuKu) {
		this.studentShuJuKu = studentShuJuKu;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getCompletion() {
		return completion;
	}
	public void setCompletion(int completion) {
		this.completion = completion;
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
	@Override
	public String toString() {
		return "StudentTaskBookOpening [id=" + id + ", studentId=" + studentId + ", studentOpeningResport="
				+ studentOpeningResport + ", studentTaskBook=" + studentTaskBook + ", description=" + description
				+ ", completion=" + completion + "]";
	}
	
	
	
}
