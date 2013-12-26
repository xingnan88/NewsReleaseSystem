<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="top">
	<div id="logo">
		<%
			if (session.getAttribute("manager") != null)
			{
				User manager = (User) session.getAttribute("manager");
		%>
		<div class="login">
			<a href="servlet/out">注销</a>
		</div>
		<div class="login"><%=manager.getUserName()%>
		</div>
		<div class="login">
			管理员
		</div>
		<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
		%>
		<div class="login">
			<a href="servlet/out">注销</a>
		</div>
		<div class="login"><%=editor.getUserName()%>
		</div>
		<div class="login">
			编辑员
		</div>
		<%
			}
			if (session.getAttribute("manager") == null & session.getAttribute("editor") ==null)
			{
		%>
		<div class="login">
			<a href="admin/login.jsp">登录</a>
		</div>
		<%
			}
		%>
	</div>
	<div id="topics">
		<div class="thirds">
			<ul>
				<li>
					<a href="servlet/Backstage?data=1">今日焦点</a>
				</li>
				<li>
					<a href="servlet/Backstage?data=2">国内新闻</a>
				</li>
				<li>
					<a href="servlet/Backstage?data=3">国际新闻</a>
				</li>
			</ul>
		</div>
		<div class="thirds">
			<ul>
				<li>
					<a href="servlet/Backstage?data=4">体育</a>
				</li>
				<li>
					<a href="servlet/Backstage?data=5">军事</a>
				</li>
				<li>
					<a href="servlet/Backstage?data=6">教育</a>
				</li>
			</ul>
		</div>
		<div class="thirds">
			<ul>
				<li>
					<a href="servlet/Backstage?data=7">娱乐</a>
				</li>
				<li>
					<a href="servlet/Backstage?data=8">社会</a>
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