<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="com.huang.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("ctx",path);
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
		<script type="text/javascript" src="/ckeditor_3.6.1/ckeditord/ckeditor.js"></script> 
		<title>news</title>
	</head>
	<body>
		<div id="content">
			<%@include file="head.jsp" %>
			<div id="mid">
				<div id="left">
					<form id="change" method="post" action="servlet/ChangePassword">
                    	<input type="hidden" name="userType" value="${param.userType }"/>
                    	
						<table width="600" height="" border="0">
                        	<tr>
                  
								<td width="83" height="37">用户名：</td>
								<td width="501">
									<label for="userName"></label>
									<input type="text" name="userName" id="userName" />
								</td>
							</tr>
							<tr>
								<td width="83" height="37">旧密码：</td>
								<td width="501">
									<label for="oldPassword"></label>
									<input type="password" name="oldPassword" id="oldPassword" />
								</td>
							</tr>
							<tr>
								<td height="37">新密码：
								</td>
								<td>
									<label for="newPassword">
									  <input type="password" name="newPassword" id="newPassword" />
									</label></td>
							</tr>
							<tr>
								<td height="37">
									重复新密码：
								</td>
								<td>
									<label for="newPassword2"></label>
							  <input type="password" name="newPassword2" id="newPassword2" /></td>
							</tr>
				
							<tr>
								<td height="37">
									<input type="submit" name="submit" id="submit" value="提交" />
								</td>
								<td height="37">
									<input type="reset" name="reset" id="reset" value="重置" />
								</td>
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