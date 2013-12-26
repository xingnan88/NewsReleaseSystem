package com.huang.news.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class out extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session=request.getSession();
		if (session.getAttribute("manager") != null)
		{
			session.removeAttribute("manager");
			response.sendRedirect(request.getContextPath()+"/admin/index_admin.jsp");
		}else if (session.getAttribute("editor") != null)
		{
			session.removeAttribute("editor");
			response.sendRedirect(request.getContextPath()+"/admin/index_editor.jsp");
		}else if (session.getAttribute("user")!=null)
		{
			session.removeAttribute("user");
			request.getRequestDispatcher("/servlet/GetNewsServlet?userType=null").forward(request, response);
		}else {
			response.sendRedirect(request.getContextPath());
		}
	}

}
