package com.zc.dao;

import com.zc.entity.StudentTaskBookOpening;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @date
 * @author
 * 根据学生id 获得信息
 * 插入信息 只添加学生id
 * 通过学生id修改任务书路径
 * 通过学生id修改开题报告路径
 * 重置任务书路径
 * 重置开题报告路径
 * 根据任务书路径查找信息
 * 根据开题报告路径查找信息
 * 根据学生id 修改审核状态(1-->不通过 2--> 通过 )
 *
 */

public interface IStudentTaskBookOpeningDao {
//	select * from t_student_opening_report_task_book where studentId=#{studentId}
	StudentTaskBookOpening showInfoByStudentId(int studentId);
	
	int addInfoByStudentId(int studentId);
	
	int uploadTaskBook(@Param("studentId") int studentId,@Param("studentTaskBook") String studentTaskBook);
	
	int uploadOpening(@Param("studentId") int studentId,@Param("studentOpeningResport") String studentOpeningResport);
	
	int uploadKeXingXing(@Param("studentId") int studentId,@Param("studentKeXingXing") String studentKeXingXing);
	
	int uploadXuQiu(@Param("studentId") int studentId,@Param("studentXuQiu") String studentXuQiu);
	
	int uploadGaiYao(@Param("studentId") int studentId,@Param("studentGaiYao") String studentGaiYao);
	
	int uploadShuJuKu(@Param("studentId") int studentId,@Param("studentShuJuKu") String studentGaiYao);
	
	int ShuJuKu(@Param("studentId") int studentId,@Param("studentShuJuKu") String studentShuJuKu);
	
	int resetTaskBook(int studentId);
	
	int resetOpening(int studentId);
	
	int resetKeXingXing(int studentId);
	
	int XuQiu(int studentId);
	
	int resetGaiYao(int studentId);
	
	int resetShuJuKu(int studentId);
	
	StudentTaskBookOpening getInfoByTaskBookPath(String studentTaskBook);
	
	StudentTaskBookOpening getInfoByOpeningPath(String studentOpeningResport);
	
	StudentTaskBookOpening getInfoByKeXingXingPath(String studentKeXingXing);
	
	StudentTaskBookOpening getInfoByXuQiuPath(String studentXuQiuResport);
	
	StudentTaskBookOpening getInfoByGaiYaoPath(String studentGaiYaoResport);
	
	StudentTaskBookOpening getInfoByShuJuKuPath(String studentShuJuKuResport);
	
	int passOpening(@Param("studentId") int studentId,@Param("openscore") String openscore);
	
	int passKexing(@Param("studentId") int studentId,@Param("kexingscore") String kexingscore);
	
	int passXuqiu(@Param("studentId") int studentId,@Param("xuqiuscore") String xuqiuscore);
	
	int passGaiyao(@Param("studentId") int studentId,@Param("gaiyaoscore") String gaiyaoscore);
	
	int passShujuku(@Param("studentId") int studentId,@Param("shujukuscore") String shujukuscore);
	
	int failOpening(int studentId);
	
	int passKeXingXing(int studentId);
	
	int failKeXingXing(int studentId);
	
	int passXuQiu(int studentId);
	
	int failXuQiu(int studentId);
	
	int passGaiYao(int studentId);
	
	int failGaiYao(int studentId);
	
	int passShuJuKu(int studentId);
	
	int failShuJuKu(int studentId);

	List<Map> showAllScores(int teacherId);

	List<StudentTaskBookOpening> showAllInfo();
}
