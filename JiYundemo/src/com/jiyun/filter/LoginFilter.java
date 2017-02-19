package com.jiyun.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jiyun.entity.UserEntity;


/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest servletRequest=(HttpServletRequest) request;
		HttpServletResponse servletResponse=(HttpServletResponse) response;
		UserEntity  entity = (UserEntity) servletRequest.getSession().getAttribute("userEntity");
		String uri = servletRequest.getRequestURI();
		String ui=uri.substring(uri.lastIndexOf("/"),uri.length());
		System.out.println(ui);
		if (!"".equals(entity)&&null!=entity||ui.equals("/login.jsp")) {
				chain.doFilter(servletRequest, servletResponse);
		}else {
			servletRequest.setAttribute("msg", "请登录后操作");
			//servletRequest.getRequestDispatcher("login.jsp").forward(servletRequest, servletResponse);
			servletResponse.sendRedirect("login.jsp");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
