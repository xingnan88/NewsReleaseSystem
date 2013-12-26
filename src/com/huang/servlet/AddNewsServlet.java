package com.huang.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jxust.news.Encoding;
import com.jxust.news.NewsManager;

public class AddNewsServlet extends HttpServlet {

	private static final long serialVersionUID = -3675716267268990872L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		NewsManager manager=new NewsManager();
		Encoding enc=new Encoding();
	    String title=enc.encoding(request.getParameter("title"));
	    int type=Integer.parseInt(enc.encoding(request.getParameter("type")));
	    String content=enc.encoding(request.getParameter("content"));                                                                                                                                                                  
	    String sql="insert into news_title(title,typeid,content)values (?,?,?)";
	    try
		{
			manager.update(sql,new Object[]{title,type,content});
		} catch (SQLException e)
		{
			e.printStackTrace();
			
		}
	    
	    response.sendRedirect("/news2.1/news4.jsp");
	}

}
