package com.zc.web;


import com.zc.entity.Student;
import com.zc.entity.Teacher;
import com.zc.entity.User;
import com.zc.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @date 2018-4-6
 * @author zhangC
 * adminLogin() 管理员登陆
 * teacherLogin() 教师登陆
 * studentLogin() 学生登陆
 * quitSystem() 退出系统
 * modifyPassword() 修改密码，由于管理员，教师，学生的修改密码相同，所以只用一个controller作为修改。
 *
 * @date 2018-4-11
 * @author zhangC
 * 修改了teacherLogin() 方法，新增了查询教师信息的功能。并且写入session中。
 *
 */

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ITeacherService teacherService;
	
	@Autowired
	private IDepartmentService departmentService;
	
	@Autowired
	private IStudentService studentService;
	
	@Autowired
	private IMajorService majorService;

	@RequestMapping(value="/login")
	public String login(Integer permission,String userNo,String password,Model model,HttpServletRequest request) {

        //这个当前用户验证的是user表中的信息，currentUser是user表中查询到的，
        // 这时只有userNo，password和permission三个属性，要获取当前用户的详细信息还需要接下来的进一步查询//1.用户登录，返回查询到的用户对象
        User currentUser = userService.login(userNo, password);
        //控制台测试
        System.out.println(currentUser + "验证登录");
        System.out.println(permission);


        if ("".equals(currentUser) || currentUser == null) {
            model.addAttribute("message", "用户名或密码错误");
            return "index.jsp";
        }

        if (permission == currentUser.getPermission()) {
            //设置的是当前会话的失效时间1h,即设置非活跃间隔时间
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(3600);
            session.setAttribute("currentUser", currentUser);
            //1.学生登录验证
            if (permission == 1) {
                //2.验证当前登录用户的权限
                //验证 t_student 表中的信息，
            // 通过学生编号，获得学生对象，参数studentNo,返回student
                Student student = studentService.getStudentByNO(userNo);
                int majorId = student.getMajorId();
                String majorName = majorService.getNameById(majorId);
                student.setMajorName(majorName);
                session.setAttribute("student", student);
                // model.addAttribute("userNo", userNo);
                return "student/main.jsp";
            }
            //2. 教师登录验证
            if (permission == 2) {
                // 在t_user表的信息，这时只有userNo，password和permission三个属性，要获取当前用户的详细信息还需要接下来的进一步查询
                // session.setAttribute("currentUser", currentUser);
                // 得到完整的teacher信息，从teacher表中查询到教师的完整信息，teacher表中保存了教师部门id
                Teacher teacher = teacherService.showInfoByNo(userNo);
                //下面通过教师部门的ID查询部门表department，得到部门名称
                int depId = teacher.getDepartmentId();//由部门ID信息
                String depName = departmentService.getNameById(depId);//由id得到部门名称
                teacher.setDepartmentName(depName);//将查询到的本用户对应的部分名称信息，set给本用户对象
                session.setAttribute("teacher", teacher);
                //model.addAttribute("userNo", userNo);
                return "teacher/main.jsp";
            }
            //3. 管理员登录验证
            if (permission == 3) {
                return "admin/main.jsp";
            }
        } else {
            model.addAttribute("message", "用户类型选择错误！");
            //return "error.jsp";
            return "index.jsp";
        }

        return userNo;
    }


    //退出登录页面，返回到index.jsp首页
    @RequestMapping(value="/quit")
    public String quitSystem(Model model,HttpServletRequest request) {
        //用于清除session的所有信息；销毁当前会话域中的所有属性
        request.getSession().invalidate();

        return "index.jsp";
    }

    //修改密码
    @RequestMapping(value="/modifyPassword")
	public String modifyPassword(Model model,String newPassword1,String currentUserNo) {
		System.out.println("新的密码："+newPassword1);
		System.out.println("账户："+currentUserNo);

		int num = userService.modifyPassword(currentUserNo, newPassword1);
		System.out.println("修改了"+num+"条数据");
		model.addAttribute("num", num);
		return "modifySuccess.jsp";
	}



	//用户名管理员之一，教学秘书，permission=3
	@RequestMapping(value="/admin/login")
	public String adminLogin(String userNo,String password,Model model,HttpServletRequest request) {

		User currentUser = userService.login(userNo, password);

		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "../../admin/adminLogin.jsp";
		}

		if(currentUser.getPermission()==3) {
			// request.getSession().setAttribute("userNo", userNo);
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(3600);
			session.setAttribute("currentUser", currentUser);
			//model.addAttribute("userNo", userNo);

			return "admin/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是管理员");
			return "../../admin/adminLogin.jsp";
		}
	}

	@RequestMapping("super/login")
	//最高管理员superAdmin：系主任 ，permission=4
	public String secretary(String userNo, String password, Model model,HttpServletRequest request){

		User currentUser = userService.login(userNo, password);

		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "../../super/superLogin.jsp";
		}

		if(currentUser.getPermission()==4) {
			// request.getSession().setAttribute("userNo", userNo);
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(3600);

			session.setAttribute("currentUser", currentUser);
			//model.addAttribute("userNo", userNo);

			//跳转到系主任主页
			return "super/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是系主任");
			return "../../super/superLogin.jsp";
		}
	}


	//指导教师登录处理，教师：permission=2
	@RequestMapping(value="/teacher/login")
	public String teacherLogin(String userNo,String password,Model model,HttpServletRequest request) {

		//这个当前用户验证的是user表中的信息，currentUser是user表中查询到的，
		// 这时只有userNo，password和permission三个属性，要获取当前用户的详细信息还需要接下来的进一步查询
		User currentUser = userService.login(userNo, password);


		if("".equals(currentUser)||currentUser==null) {
			model.addAttribute("message", "用户名或密码错误");
			return "../../teacher/teacherLogin.jsp";
		}

		if(currentUser.getPermission()==2) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(3600);

			// 在t_user表的信息，这时只有userNo，password和permission三个属性，要获取当前用户的详细信息还需要接下来的进一步查询
			session.setAttribute("currentUser", currentUser);
			
			// 得到完整的teacher信息，从teacher表中查询到教师的完整信息，teacher表中保存了教师部门id
			Teacher teacher = teacherService.showInfoByNo(userNo);
			//下面通过教师部门的ID查询部门表department，得到部门名称
			int depId = teacher.getDepartmentId();//由部门ID信息
			String depName = departmentService.getNameById(depId);//由id得到部门名称
			teacher.setDepartmentName(depName);//将查询到的本用户对应的部分名称信息，set给本用户对象
			
			session.setAttribute("teacher", teacher);
			//model.addAttribute("userNo", userNo);
			return "teacher/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是教师");
			return "../../teacher/teacherLogin.jsp";
		}
	}

	//学生用户登录处理，permission=1
	@RequestMapping(value="/student/login")
	public String studentLogin(String userNo,String password,Model model,HttpServletRequest request) {

		//1.用户登录，返回查询到的用户对象
		User currentUser = userService.login(userNo, password);
		System.out.println(currentUser+"验证登录");//控制台测试
		//验证返回的用户对象信息
		if("".equals(currentUser)||currentUser==null) {
			//验证未通过，将在前端显示提示信息message
			model.addAttribute("message", "用户名或密码错误");
			//model.addAttribute("url", "../student/studentLogin.jsp");
			//return "error.jsp";
			return "../../student/studentLogin.jsp";
		}
		//2.验证当前登录用户的权限
		if(currentUser.getPermission()==1) {
			HttpSession session = request.getSession();
			//设置的是当前会话的失效时间1h,即设置非活跃间隔时间
			session.setMaxInactiveInterval(60*60);
			// t_user表中的关于学生的信息
			session.setAttribute("currentUser", currentUser);
			
			//验证 t_student 表中的信息，
			// 通过学生编号，获得学生对象，参数studentNo,返回student
			Student student = studentService.getStudentByNO(userNo);

			int majorId = student.getMajorId();

			String majorName = majorService.getNameById(majorId);
			student.setMajorName(majorName);
			
			session.setAttribute("student", student);
			// model.addAttribute("userNo", userNo);
			return "student/main.jsp";
		}else {
			model.addAttribute("message", "当前用户不是学生");
			//return "error.jsp";
			return "../../student/studentLogin.jsp";
		}
	}

	
}
