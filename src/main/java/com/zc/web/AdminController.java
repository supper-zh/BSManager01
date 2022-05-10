package com.zc.web;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zc.entity.*;
import com.zc.service.*;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


/**
 * 
 * @author zhang
 * adminMainForm() 跳转到主页
 * adminModifyPassword() 跳转 修改密码
 * adminTeacherAdd() 跳转 教师添加
 * adminTeacherManage() 跳转 教师管理
 * adminStudentAdd() 跳转 学生添加
 * adminStudentManage() 跳转 学生管理
 * adminCheckThesis() 跳转 审核课题
 * adminAnnouncement() 跳转 查看公告
 * adminPublishAnnouncement() 跳转 发布公告
 *
 * addTeacher() 添加教师到数据库中
 * adminShowAllTeacher() 显示教师
 * adminDeleteTeacher() 删除教师
 * adminModifyTeacher() 跳转到教师修改页面，改页面显示要修改的教师信息
 * adminModifyTeacherToDb() 把修改了的教师信息添加到数据库中
 *
 * adminShowTeacherOne() 显示查询到的教师信息
 *
 * addStudent() 添加学生
 * adminShowAllStudent() 显示所有学生信息
 * adminModifyStudent() 跳转到修改页面，便显示当前学生信息
 * adminModifyStudentToDb() 修改学生信息，保存到数据库中
 * adminDeleteStudent() 删除学生信息
 * adminShowStudentOne() 显示单个学生信息，用于页面查询到。
 *
 * adminCheckThesis() 修改了该方法，可以做到跳转页面的同时显示课题信息List
 * agreeThesis() 把课题审核通过 修改status属性
 * disgreeThesis() 课题不通过
 * adminPublishAnnouncement() 管理员发布公告
 * adminDeleteAnnouncement() 管理员删除公告
 * adminShowThesisPaper() 管理员查看所有的最终论文
 * fileDownload() 文件下载
 *
 */

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private ITeacherService teacherService;
	
	@Autowired
	private IDepartmentService departmentService;
	
	@Autowired
	private IStudentService studentService;
	
	@Autowired
	private IMajorService majorService;
	
	@Autowired
	private IAnnouncementService announcementService;
	
	
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String adminMainForm() {
		return "admin/main.jsp";
	}
	
	@RequestMapping(value="/modifyPassword",method=RequestMethod.GET)
	public String adminModifyPassword() {
		return "admin/adminModifyPassword.jsp";
	}
	

	
	@RequestMapping(value="/teacherManage",method=RequestMethod.GET)
	public String adminTeacherManage() {
		
		return "admin/adminTeacherManage.jsp";
	}
	
	@RequestMapping(value="/studentAdd",method=RequestMethod.GET)
	public String adminStudentAdd() {
		return "admin/adminStudentAdd.jsp";
	}

	@RequestMapping(value="/studentManage",method=RequestMethod.GET)
	public String adminStudentManage() {
		return "admin/adminStudentManage.jsp";
	}




	@RequestMapping(value = "/checkThesis2")
	public String adminCheckThesis2(Model model,@RequestParam(required = true, defaultValue = "1") int page, @RequestParam(defaultValue = "7") int size) {

		PageHelper.startPage(page, size);
//		List<User> users = userService.findAllUser();
		List<ThesisTitle> thesisList = teacherService.showAllThesisTitle();

		for(int i=0;i<thesisList.size();i++) {
			int status = thesisList.get(i).getStatus();
			if(status == 1) {
				thesisList.get(i).setStatusName("未审核");
			}else if(status == 2) {
				thesisList.get(i).setStatusName("审核通过");
			}else {
				thesisList.get(i).setStatusName("未通过");
			}
		}
		PageInfo<ThesisTitle> pageInfo = new PageInfo<>(thesisList);

		model.addAttribute("thesis", pageInfo);
		return "admin/adminCheckThesis.jsp";
	}


	@RequestMapping(value="/checkThesis",method=RequestMethod.GET)
	public String adminCheckThesis(Model model) {
		List<ThesisTitle> thesisList = teacherService.showAllThesisTitle();

		for(int i=0;i<thesisList.size();i++) {
			int status = thesisList.get(i).getStatus();
			if(status == 1) {
				thesisList.get(i).setStatusName("未审核");
			}else if(status == 2) {
				thesisList.get(i).setStatusName("审核通过");
			}else {
				thesisList.get(i).setStatusName("未通过");
			}
		}

		model.addAttribute("thesisTitleList", thesisList);
		System.out.println("查询到该所以的课题有："+thesisList);
		
		return "admin/adminCheckThesis.jsp";
	}

	@RequestMapping(value="/agreeThesis")
	public String agreeThesis(int id,Model model) {

		int num = teacherService.agreeThesisTitle(id);
		System.out.println("课题已审核");
		adminCheckThesis(model);
		return "admin/adminCheckThesis.jsp";
	}

	@RequestMapping(value="/disagreeThesis")
	public String disgreeThesis(int id,Model model) {

		int num = teacherService.disagreeThesisTitle(id);
		System.out.println("课题审核不通过");
		adminCheckThesis(model);
		return "admin/adminCheckThesis.jsp";
	}


	@RequestMapping(value="/announcement2")
	public String adminAnnouncement2(Model model,@RequestParam(required = true, defaultValue = "1") int page, @RequestParam(defaultValue = "6") int size) {
		PageHelper.startPage(page, size);

		List<Announcement> list = announcementService.showAllAnnonucement();
		SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd");
		for(int i=0;i<list.size();i++) {
			Date time4db = list.get(i).getLastModifyTime();
			String formatTime = time.format(time4db);
			list.get(i).setTimeFormat(formatTime);
		}
		PageInfo<Announcement> pageInfo = new PageInfo<>(list);
		model.addAttribute("announcementList", pageInfo);
		return "admin/adminAnnouncement.jsp";
	}

	@RequestMapping(value="/announcement")
	public String adminAnnouncement(Model model) {
		List<Announcement> list = announcementService.showAllAnnonucement();
		SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd");

		for(int i=0;i<list.size();i++) {
			Date time4db = list.get(i).getLastModifyTime();
			String formatTime = time.format(time4db);
			list.get(i).setTimeFormat(formatTime);
		}
		model.addAttribute("announcementList", list);
		return "admin/adminAnnouncement.jsp";
	}
	@RequestMapping(value="/publishAnnouncement",method=RequestMethod.GET)
	public String adminPublishAnnouncement() {
		return "admin/adminPublishAnnouncement.jsp";
	}

	//增加系主任
	@RequestMapping("/deanAdd")
	public String adminDeanAdd(HttpServletRequest request, String teacherNo, String teacherName,String sex,String phone,String email,String zhicheng,String department,Model model) throws UnsupportedEncodingException {
		teacherNo = new String(teacherNo.getBytes("iso-8859-1"), "utf-8");
		teacherName = new String(teacherName.getBytes("iso-8859-1"), "utf-8");
		sex = new String(sex.getBytes("iso-8859-1"), "utf-8");
		//String inputMan = (String) session.getAttribute("currentUser");

		User user = (User) request.getSession().getAttribute("currentUser");
		String inputMan = user.getUserNo();

		// String inputMan = (String) request.getSession().getAttribute("currentUser.userNo");
		// inputMan = new String(inputMan.getBytes("iso-8859-1"),"utf-8");
		phone = new String(phone.getBytes("iso-8859-1"), "utf-8");
		email = new String(email.getBytes("iso-8859-1"), "utf-8");
		zhicheng = new String(zhicheng.getBytes("iso-8859-1"), "utf-8");
		department = new String(department.getBytes("iso-8859-1"), "utf-8");

		//判断是否存在已存在该教师
		Teacher teacherNo_exist = teacherService.getTeacherByNo(teacherNo);
		if ("".equals(teacherNo_exist) || null != teacherNo_exist) {
			model.addAttribute("message", "添加失败！此教师编号已存在，已存在该教师用户。");
			return "admin/adminTeacherAdd.jsp";
		}

		if (teacherNo == null || "".equals(teacherNo) || teacherName == null || "".equals(teacherName) || sex == null || "".equals(sex) || phone == null || "".equals(phone) || department == null || "".equals(department)) {
			model.addAttribute("message", "存在未填写的信息");
			return "admin/main.jsp";
		} else {
			Date currentTime = new Date();
			//这里将数据持久化到teacher表
			Teacher teacher = new Teacher();
			teacher.setTeacherNo(teacherNo);
			teacher.setTeacherName(teacherName);
			teacher.setDepartmentId(Integer.parseInt(department));
			teacher.setSex(sex);
			teacher.setInputMan(inputMan);
			teacher.setLastModifyTime(currentTime);
			teacher.setPhone(phone);
			teacher.setEmail(email);
			teacher.setZhicheng(zhicheng);
			int addNum = teacherService.addTeacher(teacher);
			// System.out.println("添加数目："+addNum);
			model.addAttribute("message", "成功添加一条系主任信息");
			return "admin/adminDeanAdd.jsp";
		}
	}

	//显示所有系主任
	@RequestMapping("/showAllDean")
	public String showAllDean(Model model,@RequestParam(required = true, defaultValue = "1") int page, @RequestParam(defaultValue = "6") int size){
		PageHelper.startPage(page, size);
		List<Teacher> teachers = teacherService.showAllTeacher();
		for(int i=0;i<teachers.size();i++) {
			System.out.println(teachers.get(i));//测试
			int depmentId = teachers.get(i).getDepartmentId();
			//部门表是个单独的表，在teacher中没有部门name字段，但是有部门id，也就是所在院系
			String departmentName = departmentService.getNameById(depmentId);
			teachers.get(i).setDepartmentName(departmentName);
		}
		System.out.println("全部系主任集合："+teachers);//测试
		PageInfo<Teacher> pageInfo = new PageInfo<>(teachers);
		model.addAttribute("teachers", pageInfo);
		return "admin/admin/adminDeanAdd.jsp";
	}


	@RequestMapping(value="/teacherAdd",method=RequestMethod.GET)
	public String adminTeacherAdd() {
		return "admin/adminTeacherAdd.jsp";
	}
	@RequestMapping(value="/teacherAdd",method=RequestMethod.POST)
	public String addTeacher(HttpServletRequest request, String teacherNo, String teacherName,String sex,String phone,String email,String zhicheng,String department,Model model) throws Exception {
		teacherNo = new String(teacherNo.getBytes("iso-8859-1"),"utf-8");
		teacherName = new String(teacherName.getBytes("iso-8859-1"),"utf-8");
		sex = new String(sex.getBytes("iso-8859-1"),"utf-8");
		//String inputMan = (String) session.getAttribute("currentUser");
		
		User user = (User)request.getSession().getAttribute("currentUser");
		String inputMan = user.getUserNo();
		
		// String inputMan = (String) request.getSession().getAttribute("currentUser.userNo");
		// inputMan = new String(inputMan.getBytes("iso-8859-1"),"utf-8");
		phone = new String(phone.getBytes("iso-8859-1"),"utf-8");
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		zhicheng = new String(zhicheng.getBytes("iso-8859-1"),"utf-8");
		department = new String(department.getBytes("iso-8859-1"),"utf-8");

		//判断是否存在已存在该教师
		Teacher teacherNo_exist = teacherService.getTeacherByNo(teacherNo);
		if("".equals(teacherNo_exist)||null!=teacherNo_exist){
			model.addAttribute("message", "添加失败！此教师编号已存在，已存在该教师用户。");
			return "admin/adminTeacherAdd.jsp";
		}

		if(teacherNo == null || "".equals(teacherNo) || teacherName == null || "".equals(teacherName)|| sex == null || "".equals(sex) || phone == null || "".equals(phone) || department == null || "".equals(department)  ) {
			model.addAttribute("message", "存在未填写的信息");
			return "admin/main.jsp";
		}else {
			Date currentTime = new Date();

			//这里将数据持久化到teacher表
			Teacher teacher = new Teacher();
			teacher.setTeacherNo(teacherNo);
			teacher.setTeacherName(teacherName);
			teacher.setDepartmentId(Integer.parseInt(department));
			teacher.setSex(sex);
			teacher.setInputMan(inputMan);
			teacher.setLastModifyTime(currentTime);
			teacher.setPhone(phone);
			teacher.setEmail(email);
			teacher.setZhicheng(zhicheng);
			
			int addNum = teacherService.addTeacher(teacher);
			// System.out.println("添加数目："+addNum);
			model.addAttribute("message", "成功添加一条教师信息");
			return "admin/adminTeacherAdd.jsp";
		}
	}
	@RequestMapping("/showAllTeacher2")
	public String Example(Model model,@RequestParam(required = true, defaultValue = "1") int page, @RequestParam(defaultValue = "6") int size) {

		PageHelper.startPage(page, size);
		List<Teacher> teachers = teacherService.showAllTeacher();
		for(int i=0;i<teachers.size();i++) {
			System.out.println(teachers.get(i));//测试
			int depmentId = teachers.get(i).getDepartmentId();
			//部门表是个单独的表，在teacher中没有部门name字段，但是有部门id，也就是所在院系
			String departmentName = departmentService.getNameById(depmentId);
			teachers.get(i).setDepartmentName(departmentName);
		}
		System.out.println("全部教师集合："+teachers);//测试

		PageInfo<Teacher> pageInfo = new PageInfo<>(teachers);
		model.addAttribute("teachers", pageInfo);
		return "admin/adminTeacherManage.jsp";
	}

	@RequestMapping(value="/showAllTeacher")
	public String adminShowAllTeacher(Model model,HttpServletResponse response) throws Exception {

		List<Teacher> teachers = teacherService.showAllTeacher();

		for(int i=0;i<teachers.size();i++) {
			System.out.println(teachers.get(i));//测试
			int depmentId = teachers.get(i).getDepartmentId();
			//部门表是个单独的表，在teacher中没有部门name字段，但是有部门id，也就是所在院系
			String departmentName = departmentService.getNameById(depmentId);
			teachers.get(i).setDepartmentName(departmentName);
		}
		//发送到前端
		model.addAttribute("teacherList", teachers);
		System.out.println("全部教师集合："+teachers);//测试
		return "admin/adminTeacherManage.jsp";
	}

//	@RequestMapping(value="/shujufenxi",method=RequestMethod.GET)
//	public String adminShujufenxi() {
//		return "admin/adminShujufenxi.jsp";
//	}
//	//新加内容

	@RequestMapping(value="/shujufenxi",method=RequestMethod.GET)
	public String adminShujuFenxi(Model model,HttpServletResponse response) throws Exception {
		List<StudentTaskBookOpening> scores = teacherService.showAllInfo();
		List<Integer> list = new ArrayList<Integer>();
		List<Integer> list_B = new ArrayList<Integer>();
		for (int i= 0 ; i<5;i++) {
			list.add(0);
			list_B.add(0);
		}
		System.out.println(list);
		System.out.println(list_B);

		for(int i=0;i<scores.size();i++) {
			int temp=0;
			if(scores.get(i).getOpenscore().equals("A"))
				temp++;
			if(scores.get(i).getStudentKeXingXing().equals("A"))
				temp++;
			if(scores.get(i).getXuqiuscore().equals("A"))
				temp++;
			if(scores.get(i).getGaiyaoscore().equals("A"))
				temp++;
			if(scores.get(i).getShujukuscore().equals("A"))
				temp++;
			if(temp==5) {
				list.set(4, list.get(4)+1);
			}
			if(temp==4) {
				list.set(3, list.get(3)+1);
			}
			if(temp==3) {
				list.set(2, list.get(2)+1);
			}
			if(temp==2) {
				list.set(1, list.get(1)+1);
			}
			if(temp==1) {
				list.set(0, list.get(0)+1);
			}
			//System.out.println(list);
		}

		for(int i=0;i<scores.size();i++) {
			int tempB=0;
			if(scores.get(i).getOpenscore().equals("B"))
				tempB++;
			if(scores.get(i).getStudentKeXingXing().equals("B"))
				tempB++;
			if(scores.get(i).getXuqiuscore().equals("B"))
				tempB++;
			if(scores.get(i).getGaiyaoscore().equals("B"))
				tempB++;
			if(scores.get(i).getShujukuscore().equals("B"))
				tempB++;
			if(tempB==5) {
				list_B.set(4, list.get(4)+1);
			}
			if(tempB==4) {
				list_B.set(3, list.get(3)+1);
			}
			if(tempB==3) {
				list_B.set(2, list.get(2)+1);
			}
			if(tempB==2) {
				list_B.set(1, list.get(1)+1);
			}
			if(tempB==1) {
				list_B.set(0, list.get(0)+1);
			}
			//System.out.println(list_B);
		}
		model.addAttribute("list", list);
		model.addAttribute("list_B", list_B);
		return "admin/adminShujufenxi.jsp";
	}
	
	@RequestMapping(value="/deleteTeacher")
	public String adminDeleteTeacher(int id,Model model) {
		// System.out.println(id);
		int num = teacherService.deleteTeacher(id);
		// System.out.println("删除了"+num+"条数据！");
		model.addAttribute("message", "成功删除一条教师信息");
		return "admin/adminTeacherManage.jsp";
	}
	
	@RequestMapping(value="/modifyTeacher")
	public String adminModifyTeacher(int id,Model model) {
		Teacher teacher = teacherService.getTeacherByid(id);
		
		String teacherNo = teacher.getTeacherNo();
		String teacherName = teacher.getTeacherName();
		int depId = teacher.getDepartmentId();
		String departmentName = departmentService.getNameById(depId);
		String sex = teacher.getSex();
		String phone = teacher.getPhone();
		String email = teacher.getEmail();
		String zhicheng = teacher.getZhicheng();
		
		model.addAttribute("id", id);
		model.addAttribute("teacherNo", teacherNo);
		model.addAttribute("teacherName", teacherName);
		model.addAttribute("departmentName", departmentName);
		model.addAttribute("sex", sex);
		model.addAttribute("phone", phone);
		model.addAttribute("email", email);
		model.addAttribute("zhicheng", zhicheng);
		return "admin/adminTeacherModify.jsp";
	}
	
	@RequestMapping(value="/modifyTeacherToDb")
	public String adminModifyTeacherToDb(int id,Model model,HttpServletRequest request, String teacherNo,String departmentOld, String teacherName,String sex,String phone,String email,String zhicheng,String department) throws Exception {
		// System.out.println(id);
		
		int departmentId = 0;
		departmentOld = new String(departmentOld.getBytes("iso-8859-1"),"utf-8");
		departmentId =  departmentService.getIdByName(departmentOld);
		
		teacherNo = new String(teacherNo.getBytes("iso-8859-1"),"utf-8");
		teacherName = new String(teacherName.getBytes("iso-8859-1"),"utf-8");
		sex = new String(sex.getBytes("iso-8859-1"),"utf-8");
		User user = (User)request.getSession().getAttribute("currentUser");
		String inputMan = user.getUserNo();
		phone = new String(phone.getBytes("iso-8859-1"),"utf-8");
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		zhicheng = new String(zhicheng.getBytes("iso-8859-1"),"utf-8");
		department = new String(department.getBytes("iso-8859-1"),"utf-8");
		Date currentTime = new Date();
		
		Teacher teacher = new Teacher();
		teacher.setId(id);
		teacher.setTeacherNo(teacherNo);
		teacher.setTeacherName(teacherName);
		if (department == null || "".equals(department)) {
			teacher.setDepartmentId(departmentId);
		}else {
			teacher.setDepartmentId(Integer.parseInt(department));
		}
		teacher.setSex(sex);
		teacher.setInputMan(inputMan);
		teacher.setLastModifyTime(currentTime);
		teacher.setPhone(phone);
		teacher.setEmail(email);
		teacher.setZhicheng(zhicheng);
		
		int num = teacherService.updateTeacher(teacher);
		System.out.println("修改数目："+num);
		return "forward:showAllTeacher";
	}
	
	
	@RequestMapping(value="/showTeacherOne",method=RequestMethod.POST)
	public String adminShowTeacherOne(Model model,HttpServletResponse response, @RequestParam(value="teacherNo",required=false) String teacherNo,@RequestParam(value="teacherName",required=false) String teacherName) throws Exception {
		
		if( ("".equals(teacherNo) || teacherNo == null) && ("".equals(teacherName) || teacherName == null) ) {
			adminShowAllTeacher(model, response);
		}else if((!"".equals(teacherNo) || teacherNo != null) &&("".equals(teacherName) || teacherName == null) ) {
			List<Teacher> teachers = teacherService.showTeacherOne1(teacherNo);
			if(teachers.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相匹配的教师信息");
			}else {
				for(int i=0;i<teachers.size();i++) {
					
					System.out.println(teachers.get(i));
					int depmentId = teachers.get(i).getDepartmentId();
					String departmentName = departmentService.getNameById(depmentId);
					teachers.get(i).setDepartmentName(departmentName);
				}
			}
			model.addAttribute("teacherList", teachers);
			System.out.println("教师集合："+teachers);
			return "admin/adminTeacherManage.jsp";
		}else if(("".equals(teacherNo) || teacherNo == null) && (!"".equals(teacherName) || teacherName != null)) {
			teacherName = new String(teacherName.getBytes("iso-8859-1"),"utf-8");
			List<Teacher> teachers = teacherService.showTeacherOne2(teacherName);
			if(teachers.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相匹配的教师信息");
			}else {
				for(int i=0;i<teachers.size();i++) {
					System.out.println(teachers.get(i));
					int depmentId = teachers.get(i).getDepartmentId();
					String departmentName = departmentService.getNameById(depmentId);
					teachers.get(i).setDepartmentName(departmentName);
				}
			}
			model.addAttribute("teacherList", teachers);
			System.out.println("教师集合："+teachers);
			return "admin/adminTeacherManage.jsp";
		} else {
			teacherName = new String(teacherName.getBytes("iso-8859-1"),"utf-8");
			teacherNo = new String(teacherNo.getBytes("iso-8859-1"),"utf-8");
			List<Teacher> teachers = teacherService.showTeacherOne3(teacherNo, teacherName);
			if(teachers.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相匹配的教师信息");
			}else {
				for(int i=0;i<teachers.size();i++) {
					System.out.println(teachers.get(i));
					int depmentId = teachers.get(i).getDepartmentId();
					String departmentName = departmentService.getNameById(depmentId);
					teachers.get(i).setDepartmentName(departmentName);
				}
			}
			
			model.addAttribute("teacherList", teachers);
			System.out.println("教师集合："+teachers);
			return "admin/adminTeacherManage.jsp";
		}
		return "admin/adminTeacherManage.jsp";
	}
	
	@RequestMapping(value="/studentAdd",method=RequestMethod.POST)
	public String addStudent(HttpServletRequest request,String studentNo, String studentName,String sex,String grade,String phone,String email,String major,Model model) throws Exception {
		studentNo = new String(studentNo.getBytes("iso-8859-1"),"utf-8");
		studentName = new String(studentName.getBytes("iso-8859-1"),"utf-8");
		sex = new String(sex.getBytes("iso-8859-1"),"utf-8");
		grade = new String(grade.getBytes("iso-8859-1"),"utf-8");
		
		User user = (User)request.getSession().getAttribute("currentUser");
		String inputMan = user.getUserNo();
		//inputMan = new String(inputMan.getBytes("iso-8859-1"),"utf-8");

		phone = new String(phone.getBytes("iso-8859-1"),"utf-8");
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		major = new String(major.getBytes("iso-8859-1"),"utf-8");

		//判断是否存在同样的学生
		Student studentNo_exist = studentService.getStudentByNO(studentNo);
		if("".equals(studentNo_exist)||null!=studentNo_exist){
			model.addAttribute("message", "添加失败！此学生编号已存在。");
			return "admin/adminStudentAdd.jsp";
		}
		//判断信息是否填写完整
		if(studentNo== null || "".equals(studentNo)||studentName == null || "".equals(studentName) || sex==null ||"".equals(sex) || grade == null || "".equals(grade) || phone == null || "".equals(phone) || major==null ||"".equals(major)) {
			model.addAttribute("message", "存在未填写的信息");
			return "admin/main.jsp";
			
		}else {
			Date currentTime = new Date();
			Student student = new Student();
			student.setStudentNo(studentNo);
			student.setStudentName(studentName);
			student.setSex(sex);
			student.setGrade(grade);
			student.setInputMan(inputMan);
			student.setPhone(phone);
			student.setEmail(email);
			student.setMajorId(Integer.parseInt(major));
			student.setLastModifyTime(currentTime);
			
			int addNum = studentService.addStudent(student);
			System.out.println("添加数目："+addNum);
			
			model.addAttribute("message", "成功添加一条学生信息");
			
			return "admin/adminStudentAdd.jsp";
		}
		
		
		
		
	}



	@RequestMapping("/showAllStudent2")
	public String showAllStudent2(Model model,@RequestParam(required = true, defaultValue = "1") int page, @RequestParam(defaultValue = "6") int size) {
		PageHelper.startPage(page, size);


		List<Student> students = studentService.showAllStudent();

		System.out.println("全部学生集合："+students);//测试

		PageInfo<Student> pageInfo = new PageInfo<>(students);

		model.addAttribute("students", pageInfo);
		return "admin/adminStudentManage.jsp";
	}
	@RequestMapping(value="/showAllStudent")
	public String adminShowAllStudent(Model model,HttpServletResponse response) throws Exception {

		List<Student> students = studentService.showAllStudent();
		for(int i=0;i<students.size();i++) {
			System.out.println(students.get(i));
			int majorId = students.get(i).getMajorId();
			String majorName = majorService.getNameById(majorId);
			students.get(i).setMajorName(majorName);
		}

		model.addAttribute("studentList", students);
		System.out.println("全部教师集合："+students);
		return "admin/adminStudentManage.jsp";
	}
	
	@RequestMapping(value="/modifyStudent")
	public String adminModifyStudent(int id,Model model) {

		Student student = studentService.getStudentNameById(id);
		String studentNo = student.getStudentNo();
		String studentName= student.getStudentName();
		int majorId = student.getMajorId();
		String majorName = majorService.getNameById(majorId);
		String grade = student.getGrade();
		String sex = student.getSex();
		String phone = student.getPhone();
		String email = student.getEmail();

		model.addAttribute("id", id);
		model.addAttribute("studentNo", studentNo);
		model.addAttribute("studentName", studentName);
		model.addAttribute("grade", grade);
		model.addAttribute("majorName", majorName);
		model.addAttribute("sex", sex);
		model.addAttribute("phone", phone);
		model.addAttribute("email", email);
		return "admin/adminStudentModify.jsp";
	}
	
	@RequestMapping(value="/modifyStudentToDb")
	public String adminModifyStudentToDb(int id,Model model,HttpServletRequest request, String studentNo,String majorOld, String studentName,String sex,String phone,String email,String major,String grade) throws Exception {
		 System.out.println(id);
		
		int majorId = 0;
		majorOld = new String(majorOld.getBytes("iso-8859-1"),"utf-8");
		majorId = majorService.getIdByName(majorOld);
		
		studentNo = new String(studentNo.getBytes("iso-8859-1"),"utf-8");
		studentName = new String(studentName.getBytes("iso-8859-1"),"utf-8");
		sex = new String(sex.getBytes("iso-8859-1"),"utf-8");
		grade = new String(grade.getBytes("iso-8859-1"),"utf-8");
		User user = (User)request.getSession().getAttribute("currentUser");
		String inputMan = user.getUserNo();
		phone = new String(phone.getBytes("iso-8859-1"),"utf-8");
		email = new String(email.getBytes("iso-8859-1"),"utf-8");
		major = new String(major.getBytes("iso-8859-1"),"utf-8");
		Date currentTime = new Date();
		
		/*Teacher teacher = new Teacher();
		teacher.setId(id);
		teacher.setTeacherNo(teacherNo);
		teacher.setTeacherName(teacherName);
		if (major == null || "".equals(major)) {
			teacher.setDepartmentId(departmentId);
		}else {
			teacher.setDepartmentId(Integer.parseInt(department));
		}
		teacher.setSex(sex);
		teacher.setInputMan(inputMan);
		teacher.setLastModifyTime(currentTime);
		teacher.setPhone(phone);*/
		
		Student student = new Student();
		student.setId(id);
		student.setStudentNo(studentNo);
		student.setStudentName(studentName);
		if(major==null || "".equals(major)) {
			student.setMajorId(majorId);
		} else {
			student.setMajorId(Integer.parseInt(major));
		}
		student.setSex(sex);
		student.setInputMan(inputMan);
		student.setLastModifyTime(currentTime);
		student.setPhone(phone);
		student.setEmail(email);
		student.setGrade(grade);
		
		int num = studentService.updateStudent(student);
		
		System.out.println("修改数目："+num);
		return "forward:showAllStudent";
	}
	
	@RequestMapping(value="/deleteStudent")
	public String adminDeleteStudent(int id,Model model) {
		 System.out.println(id);//测试
		int num = studentService.deleteStudent(id);
		//无法删除数据
		System.out.println("删除了"+num+"条数据！");//测试
		model.addAttribute("message", "成功删除一条学生信息");
		return "admin/adminStudentManage.jsp";
		//回不去了？？？？
//		return "admin/showAllStudent";
	}

	
	@RequestMapping(value="/showStudentOne",method=RequestMethod.POST)
	public String adminShowStudentOne(Model model,HttpServletResponse response, @RequestParam(value="studentNo",required=false) String studentNo,@RequestParam(value="studentName",required=false) String studentName) throws Exception {
		
		if( ("".equals(studentNo) || studentNo == null) && ("".equals(studentName) || studentName == null) ) {
			adminShowAllStudent(model, response);
		}else if((!"".equals(studentNo) || studentNo != null) &&("".equals(studentName) || studentName == null) ) {
			List<Student> students = studentService.showStudentOne1(studentNo);
			if(students.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相匹配的学生信息");
			}else {
				for(int i=0;i<students.size();i++) {
					
					int mojarId = students.get(i).getMajorId();
					String majorName= majorService.getNameById(mojarId);
					students.get(i).setMajorName(majorName);
				}
			}
			model.addAttribute("studentList", students);
			System.out.println("学生集合："+students);
			return "admin/adminStudentManage.jsp";
		}else if(("".equals(studentNo) || studentNo == null) && (!"".equals(studentName) || studentName != null)) {
			studentName = new String(studentName.getBytes("iso-8859-1"),"utf-8");
			List<Student> students = studentService.showStudentOne2(studentName);
			if(students.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相学生的教师信息");
			}else {
				for(int i=0;i<students.size();i++) {
					int mojarId = students.get(i).getMajorId();
					String majorName= majorService.getNameById(mojarId);
					students.get(i).setMajorName(majorName);
				}
			}
			model.addAttribute("studentList", students);
			System.out.println("学生集合："+students);
			return "admin/adminStudentManage.jsp";
		} else {
			studentName = new String(studentName.getBytes("iso-8859-1"),"utf-8");
			studentNo = new String(studentNo.getBytes("iso-8859-1"),"utf-8");
			List<Student> students = studentService.showStudentOne3(studentNo, studentName);
			if(students.isEmpty()) {
				model.addAttribute("showMessage", "没有与查询相匹配的学生信息");
			}else {
				for(int i=0;i<students.size();i++) {
					int mojarId = students.get(i).getMajorId();
					String majorName= majorService.getNameById(mojarId);
					students.get(i).setMajorName(majorName);
				}
			}
			
			model.addAttribute("studentList", students);
			System.out.println("学生集合："+students);
			return "admin/adminStudentManage.jsp";
		}
		return "admin/adminStudentManage.jsp";
	}
	

	@RequestMapping(value="/publishAnnouncement")
	public String adminPublishAnnouncement(HttpServletRequest request,Model model,String announcement) throws Exception {
		announcement = new String(announcement.getBytes("iso-8859-1"),"utf-8");
		
		if(announcement == null|| "".equals(announcement)) {
			
			model.addAttribute("message", "发布的公告不可为空");
			return "admin/main.jsp";
		}else {
			Announcement an = new Announcement();
			an.setContext(announcement);
			an.setInputMan("admin");
			Date time = new Date();
			an.setLastModifyTime(time);
			
			int num = announcementService.addAnnouncement(an);
			System.out.println("添加公告"+num+"条");
			model.addAttribute("message", "成功添加了一个条公告");
			adminAnnouncement(model);
			
			return "admin/adminAnnouncement.jsp";
		}
		
	}
	
	@RequestMapping(value="/deleteAnnouncement")
	public String adminDeleteAnnouncement(Model model,int id) throws Exception {
		int num = announcementService.deleteAnnouncement(id);
		System.out.println("删除公告"+num+"条");
		
		model.addAttribute("message", "删除一个条公告");
		adminAnnouncement(model);
		return "admin/adminAnnouncement.jsp";
	}
	
	@RequestMapping(value="/showThesisPaper")
	public String adminShowThesisPaper(Model model) {
		List<ThesisPaper> paperList = teacherService.getAllPaper();
		List<Student> studentList = new ArrayList<Student>();
		Student s = new Student();
		for(int i=0;i<paperList.size();i++) {
			int studentId = paperList.get(i).getStudentId();
			String studentName = studentService.getStudentNameById(studentId).getStudentName();
			int thesisId = teacherService.getTopicInfoByStudentId(studentId).getThesisId();
			String thesisName = teacherService.getThesisById(thesisId).getThesisName();
			String filePath = paperList.get(i).getPaperInfo();
			String[] str = filePath.split("\\\\");
			String fileName = str[str.length-1].toString();
			s.setStudentName(studentName);
			s.setThesisName(thesisName);
			s.setFileName(fileName);
			s.setFilePath(filePath);
			studentList.add(s);
		}
		model.addAttribute("studentList", studentList);
		return "admin/adminThesisPaperResult.jsp";
	}
	
	@RequestMapping(value="/fileDownload")
	public ResponseEntity<byte[]> fileDownload(HttpServletRequest request, @RequestParam("filePath") String filePath,@RequestParam("fileName") String fileName, Model model) throws Exception {
		fileName = new String(fileName.getBytes("iso-8859-1"),"utf-8");
		filePath = new String(filePath.getBytes("iso-8859-1"),"utf-8");
		File file = new File(filePath);
		HttpHeaders headers = new HttpHeaders();
		String downloadFile = new String(fileName.getBytes("utf-8"), "iso-8859-1");
		headers.setContentDispositionFormData("attachment", downloadFile);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.CREATED); 
	}
	
}
