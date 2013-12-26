package com.huang.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.util.Encoding;
import com.huang.util.NewsManager;

public class UpdateServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		NewsManager nm=new NewsManager();
		
		int id=Integer.parseInt(Encoding.encoding(request.getParameter("id")));
		String type=Encoding.encoding(request.getParameter("type"));
		String title=Encoding.encoding(request.getParameter("title"));
		String author=Encoding.encoding(request.getParameter("author"));
		String content=Encoding.encoding(request.getParameter("content"));
		int typeId=typeValue(type);
		
		String sql="update news_title set title=? ,author=?,content=?,typeId=? where id=?";
		try
		{
			nm.update(sql, new Object[]{title,author,content,typeId,id});
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/admin/updateSuccess.jsp").forward(request, response);
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
