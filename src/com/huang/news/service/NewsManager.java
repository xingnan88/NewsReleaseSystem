package com.huang.news.service;

import java.sql.SQLException;
import java.util.List;

import com.huang.news.dao.NewsDao;
import com.huang.news.model.News;

public class NewsManager
{
	private NewsDao nd=new NewsDao();
	
	public News get(int id) throws SQLException
	{
		return nd.get(id);
	}
	public List<News> find(String sql, Object[] args) throws SQLException
	{
		return nd.find(sql, args);
	}
	public void save(String sql, Object[] args) throws SQLException
	{
		nd.save(sql, args);
	}
	public void update(String sql, Object[] args) throws SQLException
	{
		nd.update(sql, args);
	}
	public void delete(String sql, Object[] args) throws SQLException
	{
		nd.delete(sql, args);
	}
	public List<News> find(String sql, Object[] args,int count) throws SQLException
	{
		return nd.find(sql, args, count);
	}
}
