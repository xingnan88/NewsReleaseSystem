package com.jxust.news;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil
{	
	public Connection getConnection() throws SQLException, ClassNotFoundException
	{
		//第一步 注册驱动
		Class.forName("com.mysql.jdbc.Driver");
		//第二步 建立连接
		return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/news", "root", "root");
	}
	
	public void close(Connection con, PreparedStatement stam, ResultSet rs)
	{
		if(null != rs)
		{
			try
			{
				rs.close();
			}
			catch(Exception e)
			{
				System.out.println("rs close exception");
			}
			finally
			{
				if(null != stam)
				{
					try
					{
						stam.close();
					}
					catch(Exception e)
					{
						System.out.println("stam close exception");
					}
					finally
					{
						if(null != con)
						{
							try
							{
								con.close();
							} catch (Exception e)
							{
								System.out.println("con close exception");
							}
						}
					}
				}
			}
		}
	}
}














