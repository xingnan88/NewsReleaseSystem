package com.huang.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String userType = Encoding.encoding(request.getParameter("userType"));
		String userName = Encoding.encoding(request.getParameter("userName"));
		String password = Encoding.encoding(request.getParameter("password"));
		System.out.print(userName);
		System.out.print(password);
		UserManager um = new UserManager();
		User user = um.findUser(userName, userType);
		HttpSession session = request.getSession();
		if (user != null)
		{
			if (user.getPassword().equals(password))
			{
				if (user.getUserType().equals("manager"))
				{
					session.setAttribute("manager", user);
					request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
				}
				else if (user.getUserType().equals("editor"))
				{
					session.setAttribute("editor", user);
					request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
				}
				else if (user.getUserType().equals("user"))
				{
					session.setAttribute("user", user);
					request.getRequestDispatcher("/servlet/GetNewsServlet").forward(request, response);
				}
				
			} else
			{
				request.setAttribute("message", "用户名和密码不匹配！！");
				request.getRequestDispatcher("/warning.jsp").forward(request, response);
			}

		} else 
		{
			request.setAttribute("message", "用户不存在！！");
			request.getRequestDispatcher("/warning.jsp").forward(request, response);
		}
	}

}
