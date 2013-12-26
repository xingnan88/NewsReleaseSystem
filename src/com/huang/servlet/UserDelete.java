package com.huang.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.util.Encoding;
import com.huang.util.NewsManager;
import com.huang.util.UserManager;

public class UserDelete extends HttpServlet
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
		UserManager nm=new UserManager();
		int id=Integer.parseInt(Encoding.encoding(request.getParameter("id")));
		String sql="delete from user where id=?";
		try
		{
			nm.delete(sql, id);
		} catch (SQLException e)
		{
			e.printStackTrace();
			request.getRequestDispatcher("/admin/error.jsp").forward(request, response);
		}
		
		request.getRequestDispatcher("/admin/deleteSuccess.jsp").forward(request, response);
	}

}