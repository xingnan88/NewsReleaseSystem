package com.huang.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.huang.news.service.UserManager;
import com.huang.news.util.Encoding;

public class ChangePassword extends HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userName = Encoding.encoding(request.getParameter("userName"));
		String oldPassword = Encoding.encoding(request.getParameter("oldPassword"));
		String newPassword = Encoding.encoding(request.getParameter("newPassword"));
		String userType = Encoding.encoding(request.getParameter("userType"));
		UserManager um = new UserManager();
		if (um.findUser(userName, userType) != null)
		{
				if (um.findUser(userName, userType).getPassword().equals(oldPassword))
				{
					try
					{
						um.update(userName, userType, newPassword);
					} catch (SQLException e)
					{
						e.printStackTrace();
						request.setAttribute("message", "没有修改成功，请重新修改！！");
						request.getRequestDispatcher("/warning.jsp").forward(request, response);
					}
					if (userType.equals("manager")||userType.equals("editor"))
					{
					request.getRequestDispatcher("/admin/changeSuccess.jsp").forward(request, response);
					}else{
						request.getRequestDispatcher("/changeSuccess.jsp").forward(request, response);
					}
				} else
				{
					request.setAttribute("message", "老密码不正确！！");
					request.getRequestDispatcher("/warning.jsp").forward(request, response);
				}
		
		} else
		{
			request.setAttribute("message", "用户不存在！！");
			request.getRequestDispatcher("/warning.jsp").forward(request, response);
		}

	}

}
