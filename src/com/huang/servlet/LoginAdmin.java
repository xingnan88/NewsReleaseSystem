package com.huang.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.model.User;
import com.huang.util.Encoding;
import com.huang.util.UserManager;

public class LoginAdmin extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userName = Encoding.encoding(request.getParameter("userName"));
		String password = Encoding.encoding(request.getParameter("password"));
		System.out.print(userName);
		System.out.print(password);
		UserManager um = new UserManager();
		User user = um.findUser(userName);
		ServletContext application = getServletContext();

		if (user != null)
		{
			if (user.getPassword().equals(password))
			{
				application.setAttribute("findUser", user);
				request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
			}

		} else
		{
			request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
		}
	}

}
