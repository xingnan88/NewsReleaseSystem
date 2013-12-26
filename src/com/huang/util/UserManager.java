package com.huang.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import com.huang.model.User;

public class UserManager
{
	private Connection conn;
	private PreparedStatement stam;
	private ResultSet rs;

	public User findUser(String userName)
	{
	

		JdbcUtil util = new JdbcUtil();
		try
		{
			conn = util.getConnection();
			stam = conn.prepareStatement("select * from user where userName=?");
			stam.setString(1, userName);
			rs = stam.executeQuery();
			if (rs.next())
			{
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setAnswer(rs.getString("answer"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setQuestion(rs.getString("question"));
				user.setUserName(rs.getString("userName"));
				return user;
			}
			
			else {
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
	
//	@Test
//	public void TestfindUser()
//	{
//		System.out.print(findUser("dafd").getPassword());
//	}
	
}
