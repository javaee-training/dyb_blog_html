package com.doufuding.javaee.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.doufuding.model.UserInfo;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user/LoginAction")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		ServletContext sc =  this.getServletContext();
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserInfo uInfo = (UserInfo) sc.getAttribute("user");
 		String reg_username = uInfo.getLoginName();
 		String reg_password = uInfo.getPassword();
 		if(username.equals(reg_username)&&password.equals(reg_password)){
			session.setAttribute("username", username);
			String url="/blog/add.jsp";
			RequestDispatcher rd = sc.getRequestDispatcher(url);
			rd.forward(request, response);	
		}else{
			request.getRequestDispatcher("/user/login.jsp").forward(request, response);
		}
	}

}
