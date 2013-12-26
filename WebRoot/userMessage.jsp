<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.util.*"%>
<%@ page import="com.huang.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
			<div id="top">
				<div id="logo">
					<%
						if (session.getAttribute("user") != null) {
							User user = (User) session.getAttribute("user");
					%>
					<div class="login">
						<a href="servlet/out">注销</a>
					</div>
					<div class="login">
						<a href="servlet/UserMessage"><%=user.getUserName()%></a>
					</div>
					<div class="login">
						你好
					</div>


					<%
						} else {
					%>
					<div class="login">
						<a href="login.jsp">登录</a>
					</div>
					<div class="login">
						<a href="register.jsp">注册</a>
					</div>
					<div class="login">
						<a>游客</a>
					</div>
					<%
						}
					%>
				</div>
				<div id="topics">
					<div class="thirds">
						<ul>
							<li>
								<a href="#">今日焦点</a>
							</li>
							<li>
								<a href="#">国内新闻</a>
							</li>
							<li>
								<a href="#">国际新闻</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a href="#">体育</a>
							</li>
							<li>
								<a href="#">军事</a>
							</li>
							<li>
								<a href="#">教育</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a href="#">娱乐</a>
							</li>
							<li>
								<a href="#">社会</a>
							</li>
						</ul>
					</div>
				</div>
				<div id="search">
					<form method="post" action="?">
						<p>
							<input type="text" name="search" class="search" />
							<input type="submit" value="搜索" class="button" />
						</p>
					</form>
				</div>
			</div>
		<div id="left">
		  <table width="307" border="0">
		    <tr>
		      <td width="95">用户名：</td>
		      <td width="202">${user.userName }</td>
	        </tr>
		    <tr>
		      <td>电子邮件：</td>
		      <td>${user.email}</td>
	        </tr>
		    <tr>
		      <td>注册时间：</td>
		      <td>${user.registerDate }</td>
	        </tr>
		    <tr>
		      <td>&nbsp;</td>
		      <td><h3><a href="changePassword.jsp?user=${user}">修改密码</a></h3></td>
	        </tr>
	      </table>
		</div>
		</div>