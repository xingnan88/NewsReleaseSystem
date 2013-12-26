<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.jxust.news.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
        <div class="login"><a href="login.jsp">注册</a></div>
        <div class="login"><a href="#">登录</a></div>
        </div>
		<div id="topics">
			<div class="thirds">
				<ul>
					<li><a href="servlet/Backstage?data=1">今日焦点</a></li>
					<li><a href="servlet/Backstage?data=2">国内新闻</a></li>
					<li><a href="servlet/Backstage?data=3">国际新闻</a></li>
				</ul>
			</div>
			<div class="thirds">
				<ul>
					<li><a href="servlet/Backstage?data=4">体育</a></li>
					<li><a href="servlet/Backstage?data=5">军事</a></li>
					<li><a href="servlet/Backstage?data=6">教育</a></li>
				</ul>
			</div>
            <div class="thirds">
				<ul>
					<li><a href="servlet/Backstage?data=7">娱乐</a></li>
					<li><a href="servlet/Backstage?data=8">社会</a></li>
				</ul>
			</div>
		</div>
		<div id="search">
			<form method="post" action="?">
				<p><input type="text" name="search" class="search" /> <input type="submit" value="搜索" class="button" /></p>
			</form>
		</div>
			</div>		
			
			
            <div id="mid">		
			<table width="811" border="0" align="center">
		  	<tr>
			    <td width="483" background="images/bgshade.gif" height="30" align="center"><font size="2px">标题</font></td>
			    <td width="106" background="images/bgshade.gif" height="30" align="center"><font size="2px">时间</font></td>
			    <td width="194" background="images/bgshade.gif" height="30" align="center"><font size="2px">编辑</font></td>
		    </tr>
		    <c:forEach items="${requestScope.data}" var="news1" varStatus="status1" >
		    <tr>
		    <c:if test="${status1.index%2==0}">
				<td width="483" background="images/bgshade.gif" height="25"><font size="2px">${news1.title}</font></td>
			    <td width="106" background="images/bgshade.gif" height="25"><font size="2px">${news1.pubtime}</font></td>
			    <td width="194" background="images/bgshade.gif" height="25"><font size="2px"><a href="servlet/ReadNews?titleid=${news1.id }">查看</a> <a href="postnew.jsp">添加</a> <a href="servlet/DeleteServlet?id=${news1.id}">删除</a> <a href="servlet/UpdateList?titleid=${news1.id}">修改</a></font></td>
			</c:if>
			<c:if test="${status1.index%2!=0}">
				<td width="483" height="25"><font size="2px">${news1.title}</font></td>
			    <td width="106" height="25"><font size="2px">${news1.pubtime}</font></td>
			    <td width="194" height="25"><font size="2px"><a href="servlet/ReadNews?titleid=${news1.id}">查看</a> <a href="postnew.jsp">添加</a> <a href="servlet/DeleteServlet?id=${news1.id}">删除</a> <a href="servlet/UpdateList?titleid=${news1.id}">修改</a></font></td>
			</c:if>					
            </c:forEach>
		    </tr>		
		  </table>
        
		</div>
        
        <div id="bottom">
		<div id="footer" align="center">
        <a href="">新闻网简介</a> |<a href=""> 关于我们</a> |<a href=""> 联系我们</a> |<a href=""> 我要链接</a> |<a href=""> 版权声明</a> |<a href=""> 法律顾问</a> |<a href=""> 广告服务</a>　
        </div>
        </div>
</div>
</body>
</html>