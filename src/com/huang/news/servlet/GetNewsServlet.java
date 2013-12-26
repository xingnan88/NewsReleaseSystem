package com.huang.news.servlet;

import java.io.IOException;

import javax.management.modelmbean.RequiredModelMBean;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.news.service.NewsManager;
import com.huang.news.util.Encoding;

public class GetNewsServlet extends HttpServlet
{
	private static final long serialVersionUID = 8022092663044219821L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String userType = Encoding.encoding(request.getParameter("userType"));
		try
		{
			NewsManager manager = new NewsManager();
			if (userType.equals("user"))
			{
				request.setAttribute("data1", manager.find("select * from news where typeId=1", null));
				request.setAttribute("data2", manager.find("select * from news where typeId=2", null));
				request.setAttribute("data3", manager.find("select * from news where typeId=3", null));
				request.setAttribute("data4", manager.find("select * from news where typeId=4", null));
				request.setAttribute("data5", manager.find("select * from news where typeId=5", null));
				request.setAttribute("data6", manager.find("select * from news where typeId=6", null));
				request.setAttribute("data7", manager.find("select * from news where typeId=7", null));
				request.setAttribute("data8", manager.find("select * from news where typeId=8", null));
			} else
			{
				request.setAttribute("data1", manager.find("select * from news where typeId=1", null,1));
				request.setAttribute("data2", manager.find("select * from news where typeId=2", null,1));
				request.setAttribute("data3", manager.find("select * from news where typeId=3", null,1));
				request.setAttribute("data4", manager.find("select * from news where typeId=4", null,1));
				request.setAttribute("data5", manager.find("select * from news where typeId=5", null,1));
				request.setAttribute("data6", manager.find("select * from news where typeId=6", null,1));
				request.setAttribute("data7", manager.find("select * from news where typeId=7", null,1));
				request.setAttribute("data8", manager.find("select * from news where typeId=8", null,1));
			}
			request.getRequestDispatcher("/news.jsp").forward(request, response);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
	}

}
