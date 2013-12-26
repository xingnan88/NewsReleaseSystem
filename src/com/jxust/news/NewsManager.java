package com.jxust.news;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsManager
{
	private Connection conn;
	private PreparedStatement stam;
	private ResultSet rs;

	public News get(int id) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement("select * from news_title where id = ?");
			stam.setLong(1, id);
			rs = stam.executeQuery();

			if (rs.next())
			{
				News news = new News();
				news.setId(Integer.parseInt(rs.getString("id")));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setTypeId(Integer.parseInt(rs.getString("typeId")));
				return news;
			} else
			{
				return null;
			}

		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} finally
		{
			util.close(conn, stam, rs);
		}
	}

	public List<News> find(String sql, Object[] args) throws SQLException
	{

		JdbcUtil util = new JdbcUtil();
		List<News> list = new ArrayList<News>();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);
			if (null != args)
			{
				for (int i = 1; i <= args.length; i++)
				{
					stam.setObject(i, args[i]);
				}
			}

			rs = stam.executeQuery();
			News news = null;
			while (rs.next())
			{
				news = new News();
				news.setId(Integer.parseInt(rs.getString("id")));
				news.setTitle(rs.getString("title"));
				news.setContent(rs.getString("content"));
				news.setTypeId(Integer.parseInt(rs.getString("typeId")));
				list.add(news);
			}

			return list;

		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} finally
		{
			util.close(conn, stam, rs);
		}
	}

	public void save(String sql, Object[] args) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);

			if (null != args)
			{
				for (int i = 0; i < args.length; i++)
				{
					stam.setObject(i + 1, args[i]);
				}
			}

			stam.executeUpdate();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} finally
		{
			util.close(conn, stam, null);
		}
	}

	public void update(String sql, Object[] args) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);

			if (null != args)
			{
				for (int i = 0; i < args.length; i++)
				{
					stam.setObject(i + 1, args[i]);
				}
			}

			stam.executeUpdate();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} finally
		{
			util.close(conn, stam, null);
		}
	}

	public void delete(String sql, Object[] args) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);

			if (null != args)
			{
				for (int i = 0; i < args.length; i++)
				{
					stam.setObject(i + 1, args[i]);
				}
			}

			stam.executeUpdate();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} finally
		{
			util.close(conn, stam, null);
		}
	}
}
