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
                <form id="register" method="post" action="servlet/RegisterServlet">
				  <table width="402" height="238" border="0">
					  <tr>
					    <td width="111">用户名：</td>
					    <td width="238"><input type="text" name="userName" id="userName" /></td>
				    </tr>
					  <tr>
					    <td>密码：</td>
					    <td><input type="text" name="password" id="password" /></td>
				    </tr>
					  <tr>
					    <td>电子邮件：</td>
					    <td><input type="text" name="email" id="email" /></td>
				    </tr>
					  <tr>
					    <td>密码问题：</td>
					    <td><input type="text" name="question" id="question" /></td>
				    </tr>
					  <tr>
					    <td>问题答案：</td>
					    <td><input type="text" name="answer" id="answer" /></td>
				    </tr>
                    <tr>
					    <td>注册用户类型：</td>
					    <td><label for="userType"></label>
					      <select name="userType" id="userType">
					        <option value="user">普通用户</option>
					        <option value="editor">编辑员</option>
		                </select></td>
				    </tr>
					  <tr>
					    <td>
					      
					        <input type="submit" name="submit" id="button" value="提交" />
				          
				        </td>
					    <td><input type="reset" name="reset" id="button2" value="重置" /></td>
				    </tr>
				  </table>
                  </form>
				</div>

			<%@include file="right.jsp" %>
			</div>

			<%@include file="bottom.jsp" %>
		</div>
	</body>
</html>