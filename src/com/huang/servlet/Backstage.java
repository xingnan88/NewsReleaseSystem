package com.huang.servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jxust.news.Encoding;
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
		int data=Integer.parseInt(Encoding.encoding(request.getParameter("data")));
		try
		{
			NewsManager manager = new NewsManager();
			if (data==1)
				request.setAttribute("data", manager.find("select * from news_title where typeid=1", null));
			else if (data==2)
				request.setAttribute("data", manager.find("select * from news_title where typeid=2", null));
			else if (data==3)
				request.setAttribute("data", manager.find("select * from news_title where typeid=3", null));
			else if (data==4)
				request.setAttribute("data", manager.find("select * from news_title where typeid=4", null));
			else if (data==5)
				request.setAttribute("data", manager.find("select * from news_title where typeid=5", null));
			else if (data==6)
				request.setAttribute("data", manager.find("select * from news_title where typeid=6", null));
			else if (data==7)
				request.setAttribute("data", manager.find("select * from news_title where typeid=7", null));
			else if (data==8)
				request.setAttribute("data", manager.find("select * from news_title where typeid=8", null));
			
			request.getRequestDispatcher("/backstage.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
