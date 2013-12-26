package com.huang.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;


import com.huang.model.News;

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
				news.setAuthor(rs.getString("author"));
				news.setContent(rs.getString("content"));
				news.setPubtime(rs.getDate("pubtime"));
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
				for (int i = 0; i < args.length; i++)
				{
					stam.setObject(i+1, args[i]);
				}
			}

			rs = stam.executeQuery();
			News news = null;
			while (rs.next())
			{
				news = new News();
				news.setId(Integer.parseInt(rs.getString("id")));
				news.setTitle(rs.getString("title"));
				news.setAuthor(rs.getString("author"));
				news.setPubtime(rs.getDate("pubtime"));
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
	
	public List<News> find(String sql, Object[] args,int count) throws SQLException
	{

		JdbcUtil util = new JdbcUtil();
		List<News> list = new ArrayList<News>();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);
			if (null != args)
			{
				for (int i = 0; i <args.length; i++)
				{
					stam.setObject(i+1, args[i]);
				}
			}

			rs = stam.executeQuery();
			rs.afterLast();
			News news = null;
			
			for(int i=0;i<count;i++)
			{
				if(rs.previous())
				{
				news = new News();
				news.setId(Integer.parseInt(rs.getString("id")));
				news.setTitle(rs.getString("title"));
				news.setAuthor(rs.getString("author"));
				news.setPubtime(rs.getDate("pubtime"));
				news.setContent(rs.getString("content"));
				news.setTypeId(Integer.parseInt(rs.getString("typeId")));
				list.add(news);
				}
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
	
/*	@Test
	public void testFind()
	{
		try
		{
			List<News> list=this.find("select * from news_title where typeId=1", null, 20);
			System.out.print(list.size());
			for (News news:list)
			{
				System.out.println(news.getTitle());
			}
		} catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}*/

//@Test
//	public void testFind()
//	{
//		NewsManager nm=new NewsManager();
//		String sql="select * from news_title where title like ?";
//		String search="¹úÎñ";
//		String key="%"+search+"%";
//		try {
//			List<News> news=nm.find(sql, new Object[]{key});
//			System.out.println(news.size());
//			for (News n : news)
//			{
//				System.out.print(n.getTitle());
//			}
//			
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
	
}
