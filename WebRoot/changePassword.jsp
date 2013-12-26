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
			<div id="top">
			<div id="logo">
			</div>
			<div id="topics">
				<div class="thirds">
					<ul>
						<li>
							<a >今日焦点</a>
						</li>
						<li>
							<a >国内新闻</a>
						</li>
						<li>
							<a >国际新闻</a>
						</li>
					</ul>
				</div>
				<div class="thirds">
					<ul>
						<li>
							<a >体育</a>
						</li>
						<li>
							<a >军事</a>
						</li>
						<li>
							<a >教育</a>
						</li>
					</ul>
				</div>
				<div class="thirds">
					<ul>
						<li>
							<a >娱乐</a>
						</li>
						<li>
							<a >社会</a>
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
			<div id="mid">
				<div id="left">
					<form id="change" method="post" action="servlet/ChangePassword">
                    	<input type="hidden" name="userType" value="user"/>
                    	
						<table width="600" height="" border="0">
                        	<tr>
                  
								<td width="83" height="37">用户名：</td>
								<td width="501">
									${user.userName}
									<input type="hidden" name="userName" value="${user.userName}"/>
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

		
			</div>

			<div id="bottom">
			<div id="footer" align="center">
				<a href="">新闻网简介</a> |
				<a href=""> 关于我们</a> |
				<a href=""> 联系我们</a> |
				<a href=""> 我要链接</a> |
				<a href=""> 版权声明</a> |
				<a href=""> 广告服务</a> |
				<a href="admin/login.jsp"> 后台登陆</a>
			</div>
		</div>
		</div>
	</body>
</html>