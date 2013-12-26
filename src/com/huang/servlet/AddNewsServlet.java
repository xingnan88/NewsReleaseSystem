package com.huang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jxust.news.Database;
import com.jxust.news.Encoding;

public class AddNewsServlet extends HttpServlet {

	private static final long serialVersionUID = -3675716267268990872L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Database database=new Database();
		Encoding enc=new Encoding();
	    String title=enc.encoding(request.getParameter("title"));
	    String type=enc.encoding(request.getParameter("type"));
	    String content=enc.encoding(request.getParameter("content"));
	    try {
			database.OpenConn();
		} catch (Exception e) {
			e.printStackTrace();
		}
	    String sql="insert into news_title(title,content,typeid) values ('"+title+"','"+content+"','"+type+"')";
	    database.executeUpdate(sql);
	    database.closeConn();
	    
	    response.sendRedirect("/news/news.jsp");
	}
}
