package com.huang.news.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.news.model.News;
import com.huang.news.service.NewsManager;

public class UpdateList extends HttpServlet
{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		NewsManager manager=new NewsManager();
		int titleid= Integer.parseInt(request.getParameter("titleid"));
		try
		{
			News news = manager.get(titleid);
			String type=this.type(news.getTypeId());
			request.setAttribute("news", news);
			request.setAttribute("type", type);
			request.getRequestDispatcher("/admin/editor_updateNews.jsp").forward(request, response);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
	}
	
	public String type(int typeId)
	{
		if (typeId==1)
			return "今日焦点";
		else if (typeId==2) {
			return "国内新闻";
		}else if (typeId==3) {
			return "国际新闻";
		}else if (typeId==4) {
			return "体育";
		}else if (typeId==5) {
			return "军事";
		}else if (typeId==6) {
			return "教育";
		}else if (typeId==7) {
			return "娱乐";
		}else if (typeId==8) {
			return "社会";
		}
		return null;
	}

}
