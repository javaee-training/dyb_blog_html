package com.doufuding.javaee.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doufuding.model.BlogInfo;
import com.doufuding.model.UserInfo;

/**
 * Servlet implementation class BlogSaveServlet
 */
@WebServlet("/blog/save")
public class BlogSaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BlogSaveServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String title = request.getParameter("title");
		String tag = request.getParameter("tag");
		String content = request.getParameter("content");
		ServletContext sc = getServletContext();
		BlogInfo bi = new BlogInfo();
		List<BlogInfo> biList = new ArrayList<BlogInfo>();
		bi.setCreateUserInfo((UserInfo)sc.getAttribute("user"));
		bi.setCreateTime(new Date());
		bi.setCreateUserId(1);
		bi.setContent(content);
		bi.setTitle(title);
		bi.setUpdateTime(new Date());
		bi.setId(1);
		biList.add(bi);
		sc.setAttribute("blogs", biList);
		String url="/info/indicate.jsp?id=4";
		RequestDispatcher rd = sc.getRequestDispatcher(url);
		rd.forward(request, response);
 	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
