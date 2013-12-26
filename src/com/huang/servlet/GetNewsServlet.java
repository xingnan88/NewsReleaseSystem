package com.huang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.util.NewsManager;

public class GetNewsServlet extends HttpServlet
{
	private static final long serialVersionUID = 8022092663044219821L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try
		{
			NewsManager manager = new NewsManager();
			request.setAttribute("data1", manager.find("select * from news_title where typeId=1", null));
			request.setAttribute("data2", manager.find("select * from news_title where typeId=2", null));
			request.setAttribute("data3", manager.find("select * from news_title where typeId=3", null));
			request.setAttribute("data4", manager.find("select * from news_title where typeId=4", null));
			request.setAttribute("data5", manager.find("select * from news_title where typeId=5", null));
			request.setAttribute("data6", manager.find("select * from news_title where typeId=6", null));
			request.setAttribute("data7", manager.find("select * from news_title where typeId=7", null));
			request.setAttribute("data8", manager.find("select * from news_title where typeId=8", null));
			request.getRequestDispatcher("/news.jsp").forward(request, response);
			
		}
		catch(Exception e)
		{
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}

}
