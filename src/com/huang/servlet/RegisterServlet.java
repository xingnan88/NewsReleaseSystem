package com.huang.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.org.mozilla.javascript.internal.EcmaError;

import com.huang.util.Encoding;
import com.huang.util.NewsManager;

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
		NewsManager loginManager = new NewsManager();
		
		String userName=Encoding.encoding(request.getParameter("userName"));
		String password=Encoding.encoding(request.getParameter("password"));
		String email=Encoding.encoding(request.getParameter("email"));
		String question=Encoding.encoding(request.getParameter("question"));
		String answer=Encoding.encoding(request.getParameter("answer"));
		String userType=Encoding.encoding(request.getParameter("userType"));
		Date registerDate=new Date();
		
		String sql="insert into user(userName,password,email,question,answer,registerDate,userType)values (?,?,?,?,?,?,?)";
		
		try
		{
			loginManager.update(sql, new Object[] {userName,password,email,question,answer,registerDate,userType});
			request.setAttribute("userType", userType);
			request.getRequestDispatcher("/registerSuccess.jsp").forward(request, response);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

}
