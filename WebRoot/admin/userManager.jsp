<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.news.util.*"%>
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
			<%@ include file="head.jsp"%>
			<div id="mid">
				<div id="left">
				<table width="" border="0" align="center">
					<tr>
						<td width="300" background="images/bgshade.gif" height="30">
							<font size="2px">用户名 </font>
						</td>
						<td width="100" background="images/bgshade.gif" height="30">
							<font size="2px">用户类型 </font>
						</td>
						<td width="100" background="images/bgshade.gif" height="30"
							align="center">
							<font size="2px">注册时间 </font>
						</td>
						<td width="150" background="images/bgshade.gif" height="30"
							align="center">
							<font size="2px">编辑 </font>
						</td>
					</tr>
					<c:forEach items="${requestScope.users}" var="user"
						varStatus="status">
						<tr>
							<c:if test="${status.index%2==0}">
								<td width="300" background="images/bgshade.gif" height="25">
									<font size="2px">${user.userName}</font>
								</td>
								<td width="100" background="images/bgshade.gif" height="25">
									<font size="2px">${user.userType}</font>
								</td>
								<td width="100" background="images/bgshade.gif" height="25">
									<font size="2px">${user.registerDate} </font>
								</td>
								<td width="150" background="images/bgshade.gif" height="25">
									<font size="2px"> <a
										href="admin/register.jsp">添加</a></font>
										<font size="2px"> <a
										href="servlet/UserDelete?id=${user.id}">删除</a></font>
								</td>
							</c:if>
							<c:if test="${status.index%2!=0}">
								<td width="300" height="25">
									<font size="2px">${user.userName} </font>
								</td>
								<td width="100" height="25">
									<font size="2px">${user.userType}</font>
								</td>
								<td width="100" height="25">
									<font size="2px">${user.registerDate} </font>
								</td>
								<td width="150" height="25">
									<font size="2px"> <a
										href="admin/register.jsp">添加</a></font>
										<font size="2px"> <a
										href="servlet/UserDelete?id=${user.id}">删除</a></font>
								</td>
							</c:if>
					</c:forEach>
					</tr>
				</table>
                </div>
                <%@include file="right.jsp" %>
			</div>
	
			<%@ include file="bottom.jsp"%>
		</div>
	</body>
</html>