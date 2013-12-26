<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.jxust.news.*"%>
<%@page import="java.sql.ResultSet"%>
<%Database database=new Database();  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'readnew.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
   // int td= Integer.parseInt(request.getParameter("titleid"));
    String td= request.getParameter("titleid");
    database.OpenConn();
     String sql="select * from news_title where id='"+td+"'";
    //String sql="select * from news_content where titleid="+td;
       ResultSet rs=database.executeQuery(sql);
      while (rs.next())
   {
   %>
      <p><%=rs.getString("title") %></p>
      <p><%=rs.getString("content")%></p>
    <%
   }
    rs.close();
    database.closeConn();
     %>
  </body>
</html>
