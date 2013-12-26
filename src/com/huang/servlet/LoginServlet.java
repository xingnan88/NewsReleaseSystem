package com.huang.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.util.Encoding;
import com.huang.util.NewsManager;

public class LoginServlet extends HttpServlet
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
		Encoding myEncoding=new Encoding();
		
		String userName=myEncoding.encoding(request.getParameter("userName"));
		String password=myEncoding.encoding(request.getParameter("password"));
		String email=myEncoding.encoding(request.getParameter("email"));
		System.out.println("heihei");
		String question=myEncoding.encoding(request.getParameter("question"));
		String answer=myEncoding.encoding(request.getParameter("answer"));
		
		String sql="insert into user(userName,password,email,question,answer)values (?,?,?,?,?)";
		
		try
		{
			loginManager.update(sql, new Object[] {userName,password,email,question,answer});
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
