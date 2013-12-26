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
		
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>index_admin</title>
		<base href="<%=basePath%>">
		<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />	
		<script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
		<script type="text/javascript" src="resources/scripts/facebox.js"></script>
		<script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
		<script type="text/javascript" src="resources/scripts/admin.js"></script>
		<script type="text/javascript" src="js/tab.js"></script>
		<script type="text/javascript" src="js/registerValidate.js"></script>
	</head>
  
	<body>
	<div id="body-wrapper"> <!-- Wrapper for the radial gradient background -->
		
		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			
			<h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
			<a href="#"><img id="logo" src="resources/images/logo.png" alt="Simpla Admin logo" /></a>
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
					<a href="servlet/out" class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
						注销登陆
					</a>       
				</li>
				
				<li> 
					<a href="#" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
					编辑员管理
					</a>
					<ul>
						<li><a onclick="openTab2()" style="cursor: pointer;">添加编辑员</a></li>
						<li><a class="current" href="servlet/UserList?userType=editor">编辑员列表</a></li> <!-- Add class "current" to sub menu items also -->
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						用户管理
					</a>
					<ul>
						<li><a onclick="openTab2()" style="cursor: pointer;">添加用户</a></li>
						<li><a href="servlet/UserList?userType=user">用户列表</a></li>
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
				
				<li>
					<a href="#" class="nav-top-item">
						设置
					</a>
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
				 你好，<%=manager.getUserName()%> !
			<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
			%>
				你好，<%=editor.getUserName()%> !
				<%
			}
			%>
			
			
			</h2>
			<p id="page-intro">你可以有如下操作</p>
			
			<ul class="shortcut-buttons-set">
				
				<li><a class="shortcut-button" onclick="openTab2()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
					添加编辑员
				</span></a></li>
				
				<li><a class="shortcut-button" href="servlet/UserList?userType=editor"><span>
					<img src="resources/images/icons/image_add_48.png" alt="icon" /><br />
					查看编辑员名单
				</span></a></li>
				
				<li><a class="shortcut-button" onclick="openTab2()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					添加用户
				</span></a></li>
				<li><a class="shortcut-button" href="servlet/UserList?userType=user"><span>
					<img src="resources/images/icons/clock_48.png" alt="icon" /><br />
					查看用户名单
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Content box</h3>
					
					<ul class="content-box-tabs">
						<li><a id="header1" href="#tab1" class="default-tab">名单</a></li> <!-- href must be unique and match the id of target div -->
						<li><a id="header2" href="#tab2">注册</a></li>
						<li><a id="header3" href="#tab3">密码修改</a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content" id="content-box-content">
					
					<div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
						
						<div class="notification attention png_bg">
							<a href="#" class="close"><img src="resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
							<div>
								编辑员列表如下：
							</div>
						</div>
						
						<table>
							
							<thead>
								<tr>
								   <th><input class="check-all" type="checkbox" /></th>
                                   <th>用户名</th>
                                   <th>id</th>				   								  
								   <th>邮箱</th>
                                   <th>注册时间</th>
								   <th>编辑</th> 
								</tr>
								
							</thead>
						 
							<tfoot>
								<tr>
									<td colspan="6">
										<div class="bulk-actions align-left">
											<select name="dropdown">
												<option value="option3">删除选中用户</option>
											</select>
											<a class="button" href="#">确定删除</a>
										</div>
										
										<div class="pagination">
											<a href="#" title="First Page">&laquo; 首页</a><a href="#" title="Previous Page">&laquo; 上一页</a>
											<a href="#" class="number" title="1">1</a>
											<a href="#" class="number" title="2">2</a>
											<a href="#" class="number current" title="3">3</a>
											<a href="#" class="number" title="4">4</a>
											<a href="#" title="Next Page">下一页 &raquo;</a><a href="#" title="Last Page">最后一页 &raquo;</a>
										</div> <!-- End .pagination -->
										<div class="clear"></div>
									</td>
								</tr>
							</tfoot>
						 
							<tbody>
								<c:forEach items="${requestScope.users}" var="user">
								<tr id="${user.id}">
									<td><input type="checkbox" /></td>
									<td>${user.userName}</td>
									<td><a href="#" title="title">${user.id}</a></td>
									<td>${user.email}</td>
									<td>${user.registerDate}</td>
									<td>
										<!-- Icons -->
										 <a title="Delete" onclick="deleteUser(${user.id})" style="cursor: pointer;"><img src="resources/images/icons/cross.png" alt="Delete" /></a> 
									</td>
								</tr>
								</c:forEach>
								
							
							</tbody>
							
						</table>
						
					</div> <!-- End #tab1 -->
					
					<div class="tab-content" id="tab2">
						<form method="post" action="">
							<fieldset> 
								<p>
									<label>用户名：</label>
										<input class="text-input small-input" type="text"  name="userName" id="userName"/> 
								</p>
								<p>
									<label>密码：</label>
										<input class="text-input small-input" type="password" name="password" id="password"/> 
								</p>
								<p>
									<label>电子邮件</label>
									<input class="text-input medium-input datepicker" type="text"  name="email" id="email" /> 
								</p>
								<p>
									<label>密码问题：</label>
									<input class="text-input large-input" type="text"  name="question" id="question" />
								</p>
								<p>
									<label>问题答案：</label>
									<input class="text-input large-input" type="text"  name="answer" id="answer"/>
								</p>
								<p>
									<label>注册用户类型：</label>              
									<select name="userType" class="small-input" id="userType">
										<option value="user">普通用户</option>
										<option value="editor">编辑员</option>
									</select> 
								</p>
								<p>
									<input class="button" type="button" value="提  交" onclick="register()"/>
									<input class="button" type="reset" value="重  置" />
								</p>
							</fieldset>
							<div class="clear"></div><!-- End .clear -->
						</form>
					</div> <!-- End #tab2 -->    
					
					<div class="tab-content" id="tab3">
					<form method="post" action="servlet/ChangePassword">
					<input type="hidden" name="userType" value="manager"/>
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
					
				</div> <!-- End .content-box-content -->
				
			</div> <!-- End .content-box -->
			

	
			<div class="clear"></div>
			
			
			<div id="footer">
				<small> <!-- Remove this notice or replace it with whatever you want -->
						新闻发布系统<a href="#">联系电话</a> | <a href="#">地址</a>
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		
	</div></body>
  
</html>
