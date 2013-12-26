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
					<form id="postnew" method="post" action="servlet/UpdateServlet">
						<input type="hidden" name="id" value="${requestScope.news.id}" />
						<table width="600" height="" border="0">
							<tr>
								<td width="83" height="37">
									新闻标题：
								</td>
								<td width="501">
									<label for="title"></label>
									<input name="title" type="text" id="title"
										value="${requestScope.news.title}" />
								</td>
							</tr>
							<tr>
								<td height="37">
									作者：
								</td>
								<td>
									<label for="author"></label>
									<input type="text" name="author" id="author"
										value="${requestScope.news.author}" />
								</td>
							</tr>
							<tr>
								<td height="37">
									新闻类别：
								</td>
								<td>
									<label for="type"></label>
									<select name="type" id="type">
										<option>
											今日焦点
										</option>
										<option>
											国内新闻
										</option>
										<option>
											国际新闻
										</option>
										<option>
											体育
										</option>
										<option>
											军事
										</option>
										<option>
											教育
										</option>
										<option>
											娱乐
										</option>
										<option>
											社会
										</option>
										<option selected="selected">
											${requestScope.type}
										</option>
									</select>
								</td>
							</tr>
							<tr>
								<td height="43">
									内容：
								</td>
								<td>
									<textarea name="content" id="textarea" cols="45" rows="5">${requestScope.news.content}</textarea>
								</td>
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

				<div id="right">
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<a href=""><b>体育</b>
									</a>
								</td>
							</tr>

						</table>
					</div>
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<a href=""><b>军事</b>
									</a>
								</td>
							</tr>

						</table>
					</div>
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<a href=""><b>教育</b>
									</a>
								</td>
							</tr>

						</table>
					</div>

				</div>
			</div>

			<%@include file="bottom.jsp" %>
		</div>
	</body>
</html>