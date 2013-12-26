package com.huang.news.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.news.model.User;
import com.huang.news.service.UserManager;

public class UserList extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userType=request.getParameter("userType");
		UserManager um=new UserManager();
		List<User> list=um.find(userType);
		request.setAttribute("users", list);
		request.getRequestDispatcher("/admin/userManager.jsp").forward(request, response);
	}

}
