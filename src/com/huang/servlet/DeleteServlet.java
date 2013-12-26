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

public class DeleteServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		NewsManager nm=new NewsManager();
		int id=Integer.parseInt(Encoding.encoding(request.getParameter("id")));
		String sql="delete from news_title where id=?";
		try
		{
			nm.delete(sql, new Object[]{id});
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/admin/deleteSuccess.jsp").forward(request, response);
	}

}
