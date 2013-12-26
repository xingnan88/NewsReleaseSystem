<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <base href="<%=basePath%>">
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="huangyunan" content="huangyunan" />
	<meta name="description" content="My Site" />
	<meta name="keywords" content="key, words" />	
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<title>news</title>
</head>
<body>
	<div id="content">
		<%@ include file="head.jsp"%>	
            <div id="mid">		
		<div id="left">
				<h1>${requestScope.news.title}</h1>
				<br/>
				${requestScope.news.content}
		</div>	
        
		<%@include file="right.jsp" %>
		</div>
        
        <div id="bottom">
		<div id="footer" align="center">
        <a href="">新闻网简介</a> |<a href=""> 关于我们</a> |<a href=""> 联系我们</a> |<a href=""> 我要链接</a> |<a href=""> 版权声明</a> |<a href=""> 法律顾问</a> |<a href=""> 广告服务</a>　
        </div>
        </div>
</div>
</body>
</html>