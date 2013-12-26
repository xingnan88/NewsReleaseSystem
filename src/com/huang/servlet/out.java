package com.huang.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class out extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		ServletContext application=this.getServletContext();
		if(application.getAttribute("findUser")!=null){
			application.removeAttribute("findUser");
			request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
		}
	}

}
