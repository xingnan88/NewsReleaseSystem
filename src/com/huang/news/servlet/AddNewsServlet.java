package com.huang.news.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.news.service.NewsManager;
import com.huang.news.util.Encoding;

public class AddNewsServlet extends HttpServlet {

	private static final long serialVersionUID = -3675716267268990872L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		NewsManager manager=new NewsManager();	 
	    String title=Encoding.encoding(request.getParameter("title"));
	    String author=Encoding.encoding(request.getParameter("author"));
	    String type=Encoding.encoding(request.getParameter("type"));
	    String content=Encoding.encoding(request.getParameter("content"));
	    int typeId = this.typeValue(type);
	    Date pubtime=new Date();
	    String sql="insert into news(title,content,author,pubtime,typeId)values (?,?,?,?,?)";
	  
	    try
		{
			manager.update(sql,new Object[]{title,content,author,pubtime,typeId});
		} catch (SQLException e)
		{
			e.printStackTrace();
			
		}
	    
		request.getRequestDispatcher("/admin/addSuccess.jsp").forward(request, response);
	}
	
	public int typeValue(String type)
	{
		if (type.equals("今日焦点"))
			return 1;
		else if (type.equals("国内新闻")) {
			return 2;
		}else if (type.equals("国际新闻")) {
			return 3;
		}else if (type.equals("体育")) {
			return 4;
		}else if (type.equals("军事")) {
			return 5;
		}else if (type.equals("教育")) {
			return 6;
		}else if (type.equals("娱乐")) {
			return 7;
		}else if (type.equals("社会")) {
			return 8;
		}
		return 0;
	}
}
