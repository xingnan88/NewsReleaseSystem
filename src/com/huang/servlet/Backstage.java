package com.huang.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jxust.news.NewsManager;

public class Backstage extends HttpServlet
{

	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			NewsManager manager = new NewsManager();
			request.setAttribute("data1", manager.find("select * from news_title where typeid=1", null));
			request.setAttribute("data2", manager.find("select * from news_title where typeid=2", null));
			request.setAttribute("data3", manager.find("select * from news_title where typeid=3", null));
			request.setAttribute("data4", manager.find("select * from news_title where typeid=4", null));
			request.setAttribute("data5", manager.find("select * from news_title where typeid=5", null));
			request.setAttribute("data6", manager.find("select * from news_title where typeid=6", null));
			request.setAttribute("data7", manager.find("select * from news_title where typeid=7", null));
			request.setAttribute("data8", manager.find("select * from news_title where typeid=8", null));
			request.getRequestDispatcher("/backstage.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
