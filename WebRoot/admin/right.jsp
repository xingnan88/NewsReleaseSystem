<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

				<div id="right">
				<%
			if (session.getAttribute("manager") != null)
			{
			
		%>
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<a><h3>管理员</h3></a>
                                    
									<a href="admin/changePassword.jsp?userType=manager"><ul><b>修改密码</b></ul></a>
									<p>&nbsp;</p>
									<a href="servlet/UserList?userType=editor"><ul><b>编辑员管理</b></ul></a>
                                    <ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin/register.jsp?userType=manager">添加编辑员</a></ul>
                                    <ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="servlet/UserList?userType=editor">删除编辑员</a></ul>
                                    <p>&nbsp;</p>
                                    <a href="servlet/UserList?userType=user"><ul><b>用户管理</b></ul></a>
                                    <ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="admin/register.jsp?userType=user">添加用户</a></ul>
                                    <ul>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="servlet/UserList?userType=user">删除用户</a></ul>
								</td>
							</tr>

						</table>
					</div>
		<% 
			 }
			 if (session.getAttribute("editor") != null)
			 {
			
		%>
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<h3><a>编辑员</a></h3>
                                   
									<a href="admin/changePassword.jsp?userType=editor"><ul>修改密码</ul></a>
									<a href="admin/backstage.jsp"><ul>新闻管理</ul></a>
                                    
                                    <a href="admin/postnew.jsp"><ul>发布新闻</ul></a>
									
								</td>
							</tr>

						</table>
					</div>
		<%}
		 %>

				</div>