package com.jiyun.control;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jiyun.dao.InterviewDao;
import com.jiyun.daoimp.InterviewDaoImpl;
import com.jiyun.entity.Interview;
import com.jiyun.entity.UserEntity;
import com.jiyun.entity.User_Role;
import com.jiyun.factory.ReflectGetDaoFactory;

/**
 * 
 * @author 浩
 *
 */
@WebServlet(name = "interviewServlet", urlPatterns = { "/interviewServlet" })
public class InterviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			String action = request.getParameter("action");
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			try {
				InterviewDao dao = (InterviewDao) ReflectGetDaoFactory.getFactory().getInstance(
						InterviewDaoImpl.class);
		
			if (action.equals("login")) {// 登录验证
				String username = request.getParameter("username");
				String password=request.getParameter("password");
				UserEntity user=new UserEntity();
				user.setUser_name(username);
				user.setUser_password(password);
				 UserEntity userEntity = dao.selectForLogin(user);
				 if (userEntity!=null) {
					/* request.setAttribute("username",userEntity.getUser_name());
					 request.setAttribute("role_name",userEntity.getRole_name());*/
					 request.getSession().setAttribute("userEntity", userEntity);
					 //request.setAttribute("user_role",);
					 request.getRequestDispatcher("index.jsp").forward(request, response);
				}else {
						request.setAttribute("message", "登录失败");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}
				}
			else if (action.equals("saveInterview")) {
				//保存面试信息
				String company_name=request.getParameter("company_name");
				String company_address=request.getParameter("company_address");
				String company_contacts=request.getParameter("company_contacts");
				String it_time=request.getParameter("it_time");
				String it_name=request.getParameter("it_name");
				UserEntity userEntity= (UserEntity) request.getSession().getAttribute("userEntity");
				Interview interview=new Interview(company_name, company_address, company_contacts, it_name, Date.valueOf(it_time),userEntity.getUser_id());
				
				dao.saveInterview(interview);
				response.sendRedirect("success.jsp");
			}	else if (action.equals("selectForFadeback")) {//查询所有学生列表
				
				
				
				request.getRequestDispatcher("fadeback.jsp").forward(request, response);
			}
	} catch (Exception e) {
				
				e.printStackTrace();
			}
		
}
}
