<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.huang.news.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
		<base href="<%=basePath%>">
		<title>index_editor</title>
		<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />	
		<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
		<script type="text/javascript" src="resources/scripts/facebox.js"></script>
		<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
		<script type="text/javascript" src="resources/scripts/editor.js"></script>
		<script type="text/javascript" src="resources/scripts/editorNews.js"></script>
		
	</head>
  
	<body><div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
		  
			<!-- Logo (221px wide) -->
			<img id="logo" src="resources/images/logo.png"/>
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links">
				
			<%
			if (session.getAttribute("manager") != null)
			{
				User manager = (User) session.getAttribute("manager");
			%>
				 你好，<%=manager.getUserName()%>  管理员!
			<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
			%>
				你好，<%=editor.getUserName()%>  编辑员!
				<%
			}
			if (session.getAttribute("manager") == null & session.getAttribute("editor") ==null)
			{
			%>
				<a href="admin/login.jsp">登录</a>
			<%
			}
			%>

			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
				
				<li>
					<a href="servlet/out" class="nav-top-item no-submenu"> 
						注销登陆
					</a>       
				</li>
				
				<li> 
					<a href="#" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
					新闻分类管理
					</a>
					<ul id="classify">
						<li><a href="servlet/Backstage?data=2">国内新闻</a></li>
						<li><a class="current" href="servlet/Backstage?data=1">今日焦点</a></li> <!-- Add class "current" to sub menu items also -->
						<li><a href="servlet/Backstage?data=3">国际新闻</a></li>
						<li><a href="servlet/Backstage?data=4">体育</a></li>
                        <li><a href="servlet/Backstage?data=5">军事</a></li>
                        <li><a href="servlet/Backstage?data=6">教育</a></li>
                        <li><a href="servlet/Backstage?data=7">娱乐</a></li>
                        <li><a href="servlet/Backstage?data=8">社会</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						发布新闻
					</a>
					<ul>
						<li><a onclick="openTab2()" style="cursor: pointer;">添加新闻</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						搜索
					</a>
					<ul>
						<li><a onclick="openTab6()" style="cursor: pointer;">搜索新闻</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						个人信息
					</a>
					<ul>
						<li><a onclick="openTab3()" style="cursor: pointer;">修改密码</a></li>
					</ul>
				</li>
				
			</ul> <!-- End #main-nav -->
			
			
		</div></div> <!-- End #sidebar -->
		
		<div id="main-content"> <!-- Main Content Section with everything -->
			
			<!-- Page Head -->
			<h2>
			
			<%
			if (session.getAttribute("manager") != null)
			{
				User manager = (User) session.getAttribute("manager");
			%>
				 你好，<%=manager.getUserName()%> 
			<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
			%>
				你好，<%=editor.getUserName()%> 
				<%
			}
			if (session.getAttribute("manager") == null & session.getAttribute("editor") ==null)
			{
			%>
				<a href="admin/login.jsp">登录</a>
			<%
			}
			%>
			
			</h2>
			<p id="page-intro">你可以有如下操作</p>
			
			<ul class="shortcut-buttons-set">
				
				<li><a class="shortcut-button" onclick="openTab2()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
					发布新闻
				</span></a></li>
				
				<li><a class="shortcut-button" onclick="openTab3()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					修改个人密码
				</span></a></li>
				
				<li><a class="shortcut-button" href="servlet/Backstage?data=0"><span>
					<img src="resources/images/icons/image_add_48.png" alt="icon" /><br />
					查看所有新闻
				</span></a></li>
				
				<li><a class="shortcut-button" onclick="openTab6()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/clock_48.png" alt="icon" /><br />
					搜索新闻
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>结果列表</h3>
					
					<ul class="content-box-tabs">
						<li><a id="header1" href="#tab1" class="default-tab">列表</a></li> 
						<li><a id="header2" href="#tab2">添加</a></li>
						<li><a id="header3" href="#tab3">密码修改</a></li>
						<li><a id="header6" href="#tab6">搜索</a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
					<div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
						
						<div class="notification attention png_bg">
							<a href="#" class="close"><img src="resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
							<div id="notifications">
								<label>${type}</label>
							</div>
						</div>
						
						<table>
							
							<thead>
								<tr>
								   <th><input class="check-all" type="checkbox" /></th>
								   <th>标题</th>
								   <th>id</th>
								   <th>发布时间</th>
								   <th>作者</th>
								   <th>编辑</th>
								</tr>
								
							</thead>
						 
							<tfoot>
								<tr>
									<td colspan="6">
										<div class="bulk-actions align-left">
											<select name="dropdown">
												<option value="option1">删除选中的新闻</option>
											</select>
											<a class="button" href="#">删除</a>
										</div>
										
										<div class="pagination">
											<a href="#" title="First Page">&laquo; First</a><a href="#" title="Previous Page">&laquo; Previous</a>
											<a href="#" class="number" title="1">1</a>
											<a href="#" class="number" title="2">2</a>
											<a href="#" class="number current" title="3">3</a>
											<a href="#" class="number" title="4">4</a>
											<a href="#" title="Next Page">Next &raquo;</a><a href="#" title="Last Page">Last &raquo;</a>
										</div> <!-- End .pagination -->
										<div class="clear"></div>
									</td>
								</tr>
							</tfoot>
						 
							<tbody>
								<c:forEach items="${requestScope.data}" var="news">
								<tr id="${news.id }">
									<td><input type="checkbox" /></td>
									<td>${news.title}</td>
									<td><a onclick="openTab4(${news.id})" title="title" style="cursor: pointer;">${news.id}</a></td>
									<td>${news.pubtime }</td>
									<td>${news.author }</td>
									<td>
										<!-- Icons -->
										 <a onclick="openTab5(${news.id})" title="Edit" style="cursor: pointer;"><img src="resources/images/icons/pencil.png" alt="Edit" /></a>
										 <a onclick="deleteNews(${news.id})" title="Delete" style="cursor: pointer;"><img src="resources/images/icons/cross.png" alt="Delete" /></a> 
									</td>
								</tr>
								</c:forEach>
							
							</tbody>
							
						</table>
						
					</div> <!-- End #tab1 -->
					
					<div class="tab-content" id="tab2">
					
						<form action="servlet/AddNewsServlet" method="post">
							
							<fieldset>
								<p>
									<label>新闻标题</label>
									<input class="text-input medium-input datepicker" type="text" id="addTitle" name="title" />
								</p>
								
								<p>
									<label>作者</label>
										<input class="text-input small-input" type="text" id="addAuthor" name="author" />
								</p>
								
								<p>
									<label>新闻类别</label>              
									<select name="type" class="small-input" id="addType">
										<option>今日焦点</option>
										<option>国内新闻</option>
										<option>国际新闻</option>
										<option>体育	</option>
										<option>军事	</option>
										<option>教育	</option>
										<option>娱乐	</option>
										<option>社会</option>
									</select> 
								</p>
								
								<p>
									<label>内容</label>
									<textarea class="text-input textarea wysiwyg" id="addContent" name="content" cols="79" rows="15"></textarea>
								</p>
								
								<p>
									<input class="button" type="button" value="提交" onclick="addNews()"/>
									<input class="button" type="reset" value="重置"/>
								</p>
								
							</fieldset>
							
							<div class="clear"></div><!-- End .clear -->
							
						</form>
						
					</div> <!-- End #tab2 -->   
					
					<div class="tab-content" id="tab3">
					<form method="post" action="servlet/ChangePassword">
					<input type="hidden" name="userType" value="editor"/>
							<fieldset>
								<p>
									<label>用户名：</label>
									<input class="text-input small-input" type="text" name="userName" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>旧密码：</label>
									<input class="text-input small-input" type="password" name="oldPassword" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>新密码：</label>
									<input class="text-input small-input" type="password" name="newPassword" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>再次输一次新密码：</label>
									<input class="text-input small-input" type="password"  name="newPassword2" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<input class="button" type="submit" value="提  交" />
									<input class="button" type="reset" value="重  置" />
								</p>
							</fieldset>
							<div class="clear"></div><!-- End .clear -->
							
					</form>
					</div>  <!-- End #tab3 -->
					
					<div class="tab-content" id="tab6">
					<form action="servlet/Search" method="post">
						<input type="hidden"  name="userType" value="editor"/>
							<fieldset>
						<p>
						<label>
						请输入关键字：
					</label>
					<input class="text-input medium-input datepicker" type="text"
						id="search" name="search"/>
					</p>

					<p>
						<input class="button" type="submit" value="搜索"/>
						<input class="button" type="reset" value="重置" />
					</p>

					</fieldset>

				<div class="clear"></div>
				<!-- End .clear -->
				</form>
				</div><!-- End #tab6 -->
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			
		   
					
	
			<div class="clear"></div>
			
			

			
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						&#169; Copyright 2009 Your Company | Powered by <a href="http://themeforest.net/item/simpla-admin-flexible-user-friendly-admin-skin/46073">Simpla Admin</a> | <a href="#">Top</a>
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		
	</div></body>
  

</html>
