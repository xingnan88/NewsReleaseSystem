<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.jxust.news.*"%>
<%@page import="java.sql.ResultSet"%>
<% 
    Database database=new Database();  
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addnew.jsp' starting page</title>
    
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
   
    String title=request.getParameter("title");
     String type=request.getParameter("type");
    String content=request.getParameter("content");
    database.OpenConn();
    String sql="insert into news_title(title,content,typeid) values ('"+title+"','"+content+"','"+type+"')";
    database.executeUpdate(sql);
    database.closeConn();
   %>  
   </body>
</html>
