package com.jxust.news;

import java.sql.*;

public class Database
{
	private Statement stmt=null;
	ResultSet rs=null;
	private Connection conn=null;
	String sql;
	String strurl="jdbc:mysql://localhost:3306/news";
	
	public Database(){
	}
	
	public void OpenConn()throws Exception{
		try{
			Class.forName("com.mysql.jdbc.Driver"); 
			conn=DriverManager.getConnection(strurl, "root", "root");
		}
		catch(Exception e){ 
			System.err.println("OpenConn:"+e.getMessage());
		}
	}

	public ResultSet executeQuery(String sql){
		stmt = null;
		rs=null;
		try{
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			rs=stmt.executeQuery(sql);
		}
		catch(SQLException e){
			System.err.println("executeQuery:"+e.getMessage());
		}
		return rs;
	}


	public void executeUpdate(String sql){
		stmt=null;
		rs=null;
		try{
			stmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			stmt.executeUpdate(sql);		
			conn.commit();
		}
		catch(SQLException e){
			System.err.println("executeUpdate:"+e.getMessage()); 
		}
	}
	
	public void closeStmt(){
		try{
			stmt.close();
		}
		catch(SQLException e){
			System.err.println("closeStmt:"+e.getMessage()); 
		}
	}


	public void closeConn(){
		try{
			conn.close();
		}
		catch(SQLException ex){
			System.err.println("aq.closeConn:"+ex.getMessage()); 
		}
	}
	

	public static String toGBK(String str){
		try {
			if(str==null)
				str = "";
			else
				str=new String(str.getBytes("ISO-8859-1"),"GBK"); 
		}
		catch (Exception e) {System.out.println(e);}
		
		return str;
	}
}

