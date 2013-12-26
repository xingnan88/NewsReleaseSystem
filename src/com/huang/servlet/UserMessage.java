package com.huang.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.huang.model.User;
import com.huang.util.Encoding;
import com.huang.util.UserManager;

public class UserMessage extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserManager um=new UserManager();
		int id=Integer.parseInt(Encoding.encoding(request.getParameter("id")));
		User u=um.findById(id);
		request.setAttribute("user", u);
		request.getRequestDispatcher("/userMessage.jsp").forward(request, response);
	}

}
