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
					<form id="postnew" method="post" action="servlet/AddNewsServlet">
						<table width="600" height="" border="0">
							<tr>
								<td width="83" height="37">
									新闻标题：
								</td>
								<td width="501">
									<label for="title"></label>
									<input type="text" name="title" id="title" />
								</td>
							</tr>
							<tr>
								<td height="37">
									作者：
								</td>
								<td>
									<label for="author"></label>
									<input type="text" name="author" id="author" />
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
									</select>
								</td>
							</tr>
							<tr>
								<td height="43">
									内容：
								</td>
								<td>
								<script type="text/javascript" src="${ctx}/fckeditor/fckeditor.js"></script>
											<script type="text/javascript">
				var oFCKeditor = new FCKeditor("content");
				oFCKeditor.BasePath	= '${ctx}/fckeditor/' ;
				oFCKeditor.Height	= 300 ;
				oFCKeditor.ToolbarSet = 'Default';
				oFCKeditor.Create() ;
				</script>
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

			<%@include file="right.jsp" %>
			</div>

			<%@include file="bottom.jsp" %>
		</div>
	</body>
</html>