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
									<h3><a>管理员</a></h3>
                                    
									<a href="admin/changePassword.jsp?userType=manager"><ul>修改密码</ul></a>
									<a href="servlet/UserList?userType=editor"><ul>编辑员管理</ul></a>
                                    <a href="servlet/UserList?userType=user"><ul>用户管理</ul></a>
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