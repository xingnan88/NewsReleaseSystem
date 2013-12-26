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
				 ��ã�<%=manager.getUserName()%>  ����Ա!
			<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
			%>
				��ã�<%=editor.getUserName()%>  �༭Ա!
				<%
			}
			if (session.getAttribute("manager") == null & session.getAttribute("editor") ==null)
			{
			%>
				<a href="admin/login.jsp">��¼</a>
			<%
			}
			%>
			
			
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
				<li>
					<a href="servlet/out" class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
						ע����½
					</a>       
				</li>
				
				<li> 
					<a href="#" class="nav-top-item current"> <!-- Add the class "current" to current menu item -->
					�༭Ա����
					</a>
					<ul>
						<li><a onclick="openTab2()" style="cursor: pointer;">��ӱ༭Ա</a></li>
						<li><a class="current" href="servlet/UserList?userType=editor">�༭Ա�б�</a></li> <!-- Add class "current" to sub menu items also -->
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						�û�����
					</a>
					<ul>
						<li><a onclick="openTab2()" style="cursor: pointer;">����û�</a></li>
						<li><a href="servlet/UserList?userType=user">�û��б�</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						������Ϣ
					</a>
					<ul>
						<li><a onclick="openTab3()" style="cursor: pointer;">�޸�����</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						����
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
				 ��ã�<%=manager.getUserName()%> !
			<%
			}
			if (session.getAttribute("editor") != null)
			{
				User editor = (User) session.getAttribute("editor");
			%>
				��ã�<%=editor.getUserName()%> !
				<%
			}
			%>
			
			
			</h2>
			<p id="page-intro">����������²���</p>
			
			<ul class="shortcut-buttons-set">
				
				<li><a class="shortcut-button" onclick="openTab2()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
					��ӱ༭Ա
				</span></a></li>
				
				<li><a class="shortcut-button" href="servlet/UserList?userType=editor"><span>
					<img src="resources/images/icons/image_add_48.png" alt="icon" /><br />
					�鿴�༭Ա����
				</span></a></li>
				
				<li><a class="shortcut-button" onclick="openTab2()" style="cursor: pointer;"><span>
					<img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
					����û�
				</span></a></li>
				<li><a class="shortcut-button" href="servlet/UserList?userType=user"><span>
					<img src="resources/images/icons/clock_48.png" alt="icon" /><br />
					�鿴�û�����
				</span></a></li>
				
			</ul><!-- End .shortcut-buttons-set -->
			
			<div class="clear"></div> <!-- End .clear -->
			
			<div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>Content box</h3>
					
					<ul class="content-box-tabs">
						<li><a id="header1" href="#tab1" class="default-tab">����</a></li> <!-- href must be unique and match the id of target div -->
						<li><a id="header2" href="#tab2">ע��</a></li>
						<li><a id="header3" href="#tab3">�����޸�</a></li>
					</ul>
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content" id="content-box-content">
					
					<div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
						
						<div class="notification attention png_bg">
							<a href="#" class="close"><img src="resources/images/icons/cross_grey_small.png" title="Close this notification" alt="close" /></a>
							<div>
								�༭Ա�б����£�
							</div>
						</div>
						
						<table>
							
							<thead>
								<tr>
								   <th><input class="check-all" type="checkbox" /></th>
                                   <th>�û���</th>
                                   <th>id</th>				   								  
								   <th>����</th>
                                   <th>ע��ʱ��</th>
								   <th>�༭</th> 
								</tr>
								
							</thead>
						 
							<tfoot>
								<tr>
									<td colspan="6">
										<div class="bulk-actions align-left">
											<select name="dropdown">
												<option value="option3">ɾ��ѡ���û�</option>
											</select>
											<a class="button" href="#">ȷ��ɾ��</a>
										</div>
										
										<div class="pagination">
											<a href="#" title="First Page">&laquo; ��ҳ</a><a href="#" title="Previous Page">&laquo; ��һҳ</a>
											<a href="#" class="number" title="1">1</a>
											<a href="#" class="number" title="2">2</a>
											<a href="#" class="number current" title="3">3</a>
											<a href="#" class="number" title="4">4</a>
											<a href="#" title="Next Page">��һҳ &raquo;</a><a href="#" title="Last Page">���һҳ &raquo;</a>
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
									<label>�û�����</label>
										<input class="text-input small-input" type="text"  name="userName" id="userName"/> 
								</p>
								<p>
									<label>���룺</label>
										<input class="text-input small-input" type="password" name="password" id="password"/> 
								</p>
								<p>
									<label>�����ʼ�</label>
									<input class="text-input medium-input datepicker" type="text"  name="email" id="email" /> 
								</p>
								<p>
									<label>�������⣺</label>
									<input class="text-input large-input" type="text"  name="question" id="question" />
								</p>
								<p>
									<label>����𰸣�</label>
									<input class="text-input large-input" type="text"  name="answer" id="answer"/>
								</p>
								<p>
									<label>ע���û����ͣ�</label>              
									<select name="userType" class="small-input" id="userType">
										<option value="user">��ͨ�û�</option>
										<option value="editor">�༭Ա</option>
									</select> 
								</p>
								<p>
									<input class="button" type="button" value="��  ��" onclick="register()"/>
									<input class="button" type="reset" value="��  ��" />
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
									<label>�û�����</label>
									<input class="text-input small-input" type="text" name="userName" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>�����룺</label>
									<input class="text-input small-input" type="password" name="oldPassword" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>�����룺</label>
									<input class="text-input small-input" type="password" name="newPassword" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<label>�ٴ���һ�������룺</label>
									<input class="text-input small-input" type="password"  name="newPassword2" /> <span class="input-notification success png_bg">Successful message</span> <!-- Classes for input-notification: success, error, information, attention -->
								</p>
								<p>
									<input class="button" type="submit" value="��  ��" />
									<input class="button" type="reset" value="��  ��" />
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
						���ŷ���ϵͳ<a href="#">��ϵ�绰</a> | <a href="#">��ַ</a>
				</small>
			</div><!-- End #footer -->
			
		</div> <!-- End #main-content -->
		
	</div></body>
  
</html>
