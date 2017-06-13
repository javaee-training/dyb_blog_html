package com.doufuding.javaee.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doufuding.model.BlogInfo;

/**
 * Servlet implementation class ViewServlet
 */
@WebServlet("/blog/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewServlet() {
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
		ServletContext sc =  this.getServletContext();
		@SuppressWarnings("unchecked")
		List<BlogInfo> biList = (ArrayList<BlogInfo>)sc.getAttribute("blogs");
		System.out.println(biList.get(0).getTitle());
		
		if(sc.getAttribute("flag")==null){
			sc.setAttribute("flag", 1);
			sc.setAttribute("blogsInfo", biList);
			request.setAttribute("rblogsInfo", biList);

			request.getRequestDispatcher("/blog/view").forward(request, response);
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
