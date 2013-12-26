package com.huang.news.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.org.mozilla.javascript.internal.EcmaError;

import com.huang.news.model.News;
import com.huang.news.service.NewsManager;
import com.huang.news.util.Encoding;

public class Search extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		NewsManager nm = new NewsManager();
		String search = Encoding.encoding(request.getParameter("search"));
		String userType = Encoding.encoding(request.getParameter("userType"));
		String key = "%" + search + "%";
		String sql = "select * from news where title like ?";
		try
		{
			List<News> news = nm.find(sql, new Object[]
			{ key });
			request.setAttribute("news", news);
			request.setAttribute("size", news.size());
			System.out.println(news.size());
			if (userType.equals("user"))
			{
				request.getRequestDispatcher("/searchResult.jsp").forward(request, response);
			} else
			{
				request.getRequestDispatcher("/admin/searchResult.jsp").forward(request, response);
			}
		} catch (SQLException e)
		{
			e.printStackTrace();
			request.setAttribute("message", "没有找到相关的新闻！");
			request.getRequestDispatcher("/warning.jsp").forward(request, response);
		}
	}

}
