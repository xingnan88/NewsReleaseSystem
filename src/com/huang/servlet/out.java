package com.huang.servlet;

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
			request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);

		}
		if (session.getAttribute("editor") != null)
		{
			session.removeAttribute("editor");
			request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);

		}
		if (session.getAttribute("user")!=null)
		{
			session.removeAttribute("user");
			request.getRequestDispatcher("/servlet/GetNewsServlet").forward(request, response);

		}
		
	}

}
