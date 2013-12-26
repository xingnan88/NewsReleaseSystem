package com.huang.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.huang.news.model.News;
import com.huang.news.service.NewsManager;

public class BackReadNews extends HttpServlet
{

	private static final long serialVersionUID = 651648058087124874L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		NewsManager manager = new NewsManager();
		int titleid = Integer.parseInt(request.getParameter("titleid"));
		try
		{
			News news = manager.get(titleid);
			request.setAttribute("rnews", news);
			request.getRequestDispatcher("/admin/editor_readNews.jsp").forward(request, response);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
	}

}
