package com.huang.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.model.News;
import com.huang.util.Encoding;
import com.huang.util.NewsManager;

public class Search extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		NewsManager nm=new NewsManager();
		String search=Encoding.encoding(request.getParameter("search"));
		String key="%"+search+"%";
		String sql="select * from news_title where title like ?";
		try {
			List<News> news=nm.find(sql, new Object[]{key});
			request.setAttribute("news", news);
			request.setAttribute("size", news.size());
			System.out.println(news.size());
			request.getRequestDispatcher("/admin/searchResult.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
			request.setAttribute("message", "没有找到相关的新闻！");
			request.getRequestDispatcher("/warning.jsp").forward(request, response);
		}
	}

}
