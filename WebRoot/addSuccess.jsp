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
					<li><a href="#">今日焦点</a></li>
					<li><a href="#">国内新闻</a></li>
					<li><a href="#">国际新闻</a></li>
				</ul>
			</div>
			<div class="thirds">
				<ul>
					<li><a href="#">体育</a></li>
					<li><a href="#">军事</a></li>
					<li><a href="#">教育</a></li>
				</ul>
			</div>
            <div class="thirds">
				<ul>
					<li><a href="#">娱乐</a></li>
					<li><a href="#">社会</a></li>
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
		<div id="left">
		  <h1>添加记录成功！		</h1>
          <a href="servlet/Backstage">回到后台新闻列表</a>
          <br/>
          <a href="postnew.jsp">继续添加新闻</a>
		</div>	
        
		<div id="right">
			<div class="right_articles">
              <table border="0">
              <tr><td><a href=""><b>体育</b></a></td></tr>
          
    		  </table>
		    </div>
			<div class="right_articles">
			<table border="0">
            <tr><td><a href=""><b>军事</b></a></td></tr>	 
			
			</table>
            </div>
			<div class="right_articles">
			<table border="0">
              <tr><td><a href=""><b>教育</b></a></td></tr>		
             
             </table>
            </div>
			
	  </div>
		</div>
        
        <div id="bottom">
		<div id="footer" align="center">
        <a href="">新闻网简介</a> |<a href=""> 关于我们</a> |<a href=""> 联系我们</a> |<a href=""> 我要链接</a> |<a href=""> 版权声明</a> |<a href=""> 法律顾问</a> |<a href=""> 广告服务</a>　
        </div>
        </div>
</div>
</body>
</html>