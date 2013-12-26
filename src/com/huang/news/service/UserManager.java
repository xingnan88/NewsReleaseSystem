package com.huang.news.service;

import java.sql.SQLException;
import java.util.List;

import com.huang.news.dao.UserDao;
import com.huang.news.model.User;

public class UserManager
{
	UserDao ud = new UserDao();

	public User findUser(String userName, String userType)
	{
		return ud.findUser(userName, userType);
	}

	public void update(String userName, String userType, String newPassword) throws SQLException
	{
		ud.update(userName, userType, newPassword);
	}

	public List<User> find(String userType) 
	{
		return ud.find(userType);
	}

	public User findById(int id)
	{
		return ud.findById(id);
	}

	public void delete(String sql, int id) throws SQLException
	{
		ud.delete(sql, id);
	}
	
	public void add(String sql, Object[] args) throws SQLException
	{
		ud.add(sql, args);
	}
}
