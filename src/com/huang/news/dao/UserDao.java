package com.huang.news.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.huang.news.model.News;
import com.huang.news.model.User;
import com.huang.news.util.JdbcUtil;

public class UserDao
{
	private Connection conn;
	private PreparedStatement stam;
	private ResultSet rs;

	public User findUser(String userName, String userType)
	{

		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement("select * from user where userName=? and userType=?");
			stam.setString(1, userName);
			stam.setString(2, userType);
			rs = stam.executeQuery();
			if (rs.next())
			{
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setAnswer(rs.getString("answer"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setQuestion(rs.getString("question"));
				user.setUserName(rs.getString("userName"));
				user.setUserType(rs.getString("userType"));
				user.setRegisterDate(rs.getDate("registerDate"));
				return user;
			}

			else
			{
				return null;
			}

		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		} finally
		{
			util.close(conn, stam, rs);
		}

	}

	public void update(String userName, String userType, String newPassword) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			User user = this.findUser(userName, userType);
			conn = util.getConnection();
			stam = conn.prepareStatement("update user set password=? where id=?");
			stam.setString(1, newPassword);
			stam.setInt(2, user.getId());
			stam.executeUpdate();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} finally
		{
			util.close(conn, stam, null);
		}
	}

	public List<User> find(String userType)
	{

		JdbcUtil util = new JdbcUtil();
		List<User> list = new ArrayList<User>();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement("select * from user where userType=?");
			stam.setString(1, userType);
			rs = stam.executeQuery();
			News news = null;
			while (rs.next())
			{
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setAnswer(rs.getString("answer"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setQuestion(rs.getString("question"));
				user.setUserName(rs.getString("userName"));
				user.setUserType(rs.getString("userType"));
				user.setRegisterDate(rs.getDate("registerDate"));
				list.add(user);
			}

			return list;

		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		} finally
		{
			util.close(conn, stam, rs);
		}
	}
	
	public User findById(int id)
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement("select * from user where id=?");
			stam.setInt(1, id);
			rs = stam.executeQuery();
			News news = null;
			if (rs.next())
			{
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setAnswer(rs.getString("answer"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setQuestion(rs.getString("question"));
				user.setUserName(rs.getString("userName"));
				user.setUserType(rs.getString("userType"));
				user.setRegisterDate(rs.getDate("registerDate"));
				return user;
			}

			return null;

		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
			return null;
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		} finally
		{
			util.close(conn, stam, rs);
		}
		
	}

	public void delete(String sql, int id) throws SQLException
	{
		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement(sql);
			stam.setInt(1, id);
			stam.executeUpdate();
		} catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} finally
		{
			util.close(conn, stam, null);
		}
	}

	// @Test
	// public void TestfindUser()
	// {
	// System.out.print(findUser("ÎâÇÙÇÙ","manager").getPassword());
	// }

	// @Test
	// public void TestUpdate() throws SQLException
	// {
	// this.update("ÎâÇÙÇÙ", "manager", "w");
	// }

}
