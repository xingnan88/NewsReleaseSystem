package com.huang.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.org.mozilla.javascript.internal.EcmaError;

import com.huang.news.service.NewsManager;
import com.huang.news.service.UserManager;
import com.huang.news.util.Encoding;
import com.huang.news.util.Md5;

public class RegisterServlet extends HttpServlet
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html;charset=gbk");
		PrintWriter out=response.getWriter();
		UserManager userManager = new UserManager();
		
		String userName=Encoding.encoding(request.getParameter("userName"));
		String passwordMd5=Encoding.encoding(request.getParameter("password"));
		String password=Md5.md5s(passwordMd5);
		
		String email=Encoding.encoding(request.getParameter("email"));
		String question=Encoding.encoding(request.getParameter("question"));
		String answer=Encoding.encoding(request.getParameter("answer"));
		String userType=Encoding.encoding(request.getParameter("userType"));
		Date registerDate=new Date();
		
		String sql="insert into user(userName,password,email,question,answer,registerDate,userType)values (?,?,?,?,?,?,?)";
		
		try
		{
			userManager.add(sql, new Object[] {userName,password,email,question,answer,registerDate,userType});
			request.setAttribute("userType", userType);
			if (userType.equals("editor"))
			{
				out.println("注册编辑员成功");
			}else{
				out.println("注册用户成功");
			}
			
		} catch (SQLException e)
		{
			e.printStackTrace();
			out.println("注册失败");
		}
	}

}
