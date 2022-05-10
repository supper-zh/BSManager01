package com.zc.filter;

import com.zc.entity.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


/**
 *
 * 这是个过滤器 用于验证用户登陆 (查找session)
 *
 * 把图片的路径过滤掉，否则会出现图片无法加载
 *
 * 
 *
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		HttpServletRequest servletRequest = (HttpServletRequest)request;
		HttpServletResponse servletResponse = (HttpServletResponse) response;

		HttpSession session = servletRequest.getSession();
		String path = servletRequest.getRequestURI();

		System.out.println("当前路径："+path);//测试

		User currentUser = (User)session.getAttribute("currentUser");
		System.out.println("currentUser");//测试

		if (path.indexOf("index.jsp") > -1 || path.indexOf("login") > -1 || path.indexOf(".jpg") > -1 || path.indexOf(".html") > -1
				|| path.indexOf(".png") > -1 || path.indexOf(".css") > -1 || path.indexOf(".js") > -1 ||path.indexOf(".do")>-1) {
			chain.doFilter(servletRequest, servletResponse);
		}else if(currentUser == null || "".equals(currentUser)) {
			//servletResponse.sendRedirect("${pageContext.request.contextPath}/index.jsp");
			//servletRequest.getRequestDispatcher("/index.jsp").forward(request, response);
			servletResponse.sendRedirect("/BSManager/index.jsp");
		}else {
			chain.doFilter(servletRequest, servletResponse);
		}

//		// 判断user是否为null
//		if(currentUser != null){
//			// 登录过了
//			//放行
//			chain.doFilter(request, response);
//		}else {
//			// 没有登陆，存储提示信息，跳转到登录页面
//			request.setAttribute("message","您尚未登陆！");
//			request.getRequestDispatcher("/login.jsp").forward(request,response);
//		}
//
//
	}
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
