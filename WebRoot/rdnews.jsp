<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>readNews</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/news2.1/style.css" media="screen" />

  </head>
  
<body>
	<div id="content">
      <div id="top">	
		<div id="logo">
        <div class="login"><a href="#">注册</a></div>
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
				<h1>${requestScope.news.title}</h1>
				<br/>
				${requestScope.news.content}
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