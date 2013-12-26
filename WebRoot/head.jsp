<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.huang.news.util.*"%>
<%@ page import="com.huang.news.model.User"%>
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
		<link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
		<title>news</title>
	</head>
	<body>
		<div id="content">
			<div id="top">
				<div id="logo">
					<%
						if (session.getAttribute("user") != null)
						{
							User user = (User) session.getAttribute("user");
					%>
					<div class="login">
						<a href="servlet/out">ע��</a>
					</div>
					<div class="login">
						<a href="servlet/UserMessage?userType=user&id=<%=user.getId()%>"><%=user.getUserName()%></a>
					</div>
					<div class="login">
						���
					</div>


					<%
						} else
						{
					%>
					<div class="login">
						<a href="login.jsp">��¼</a>
					</div>
					<div class="login">
						<a href="register.jsp">ע��</a>
					</div>
					<div class="login">
						<a>�ο�</a>
					</div>
					<%
						}
					%>
				</div>
				<div id="topics">
					<div class="thirds">
						<ul>
							<li>
								<a >���ս���</a>
							</li>
							<li>
								<a >��������</a>
							</li>
							<li>
								<a >��������</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a >����</a>
							</li>
							<li>
								<a >����</a>
							</li>
							<li>
								<a >����</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a >����</a>
							</li>
							<li>
								<a >���</a>
							</li>
						</ul>
					</div>
				</div>
				<div id="search">
					<form method="post" action="servlet/Search?userType=user">
						<p>
							<input type="text" name="search" class="search" />
							<input type="submit" value="����" class="button" />
						</p>
					</form>
				</div>
			</div>