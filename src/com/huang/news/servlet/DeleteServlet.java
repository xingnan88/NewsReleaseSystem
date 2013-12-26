package com.huang.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.news.service.NewsManager;
import com.huang.news.util.Encoding;

public class DeleteServlet extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html;charset=gbk");
		PrintWriter out=response.getWriter();
		
		NewsManager nm=new NewsManager();
		int id=Integer.parseInt(Encoding.encoding(request.getParameter("id")));
		String sql="delete from news where id=?";
		try
		{
			nm.delete(sql, new Object[]{id});
		} catch (SQLException e)
		{
			e.printStackTrace();
			out.println("É¾³ýÊ§°Ü");
		}
		out.println("É¾³ý³É¹¦");
		//request.getRequestDispatcher("/admin/index_editor.jsp").forward(request, response);
	}
}
