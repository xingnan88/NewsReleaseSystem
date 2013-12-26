<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
			<%@include file="head.jsp" %>
			<div id="mid">
				<div id="left">
					<h1>
						添加记录成功！
					</h1>
					<a href="admin/backstage.jsp">回到后台新闻列表</a>
					<br />
					<a href="admin/postnew.jsp">继续添加新闻</a>
					<br />
					<a href="servlet/GetNewsServlet">查看添加后的前台显示</a>
				</div>

			<%@include file="right.jsp" %>
			</div>

			<%@include file="bottom.jsp" %>
		</div>
	</body>
</html>