package com.huang.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.huang.news.model.User;
import com.huang.news.service.UserManager;
import com.huang.news.util.Encoding;
import com.huang.news.util.Md5;

public class LoginAdmin extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		
		String userType = Encoding.encoding(request.getParameter("userType"));
		String userName = Encoding.encoding(request.getParameter("userName"));
		String passwordMd5 = Encoding.encoding(request.getParameter("password"));
		String password=Md5.md5s(passwordMd5);
		
		UserManager um = new UserManager();
		User user = um.findUser(userName, userType);
		HttpSession session = request.getSession();
		if (user != null)
		{
			if (user.getPassword().equals(password))
			{
				if (user.getUserType().equals("manager"))
				{
					out.println("欢迎你管理员");
					session.setAttribute("manager", user);
//					request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
				}
				else if (user.getUserType().equals("editor"))
				{
					out.println("欢迎你编辑员");
					session.setAttribute("editor", user);
//					request.getRequestDispatcher("/admin/backstage.jsp").forward(request, response);
				}
				else if (user.getUserType().equals("user"))
				{
					out.println("欢迎你");
					session.setAttribute("user", user);
//					request.getRequestDispatcher("/servlet/GetNewsServlet?userType=user").forward(request, response);
				}
				
			} else
			{
				out.println("用户名和密码不匹配");
			}

		} else 
		{
			out.println("用户名不存在");
		}
	}

}
