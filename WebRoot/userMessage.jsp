<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="head.jsp"%>
<div id="mid">
	<div id="left">
		<table width="307" border="0">
			<tr>
				<td width="95">
					用户名：
				</td>
				<td width="202">
					${user.userName }
				</td>
			</tr>
			<tr>
				<td>
					电子邮件：
				</td>
				<td>
					${user.email}
				</td>
			</tr>
			<tr>
				<td>
					注册时间：
				</td>
				<td>
					${user.registerDate }
				</td>
			</tr>
			<tr>
				<td>
					&nbsp;
				</td>
				<td>
					<h3>
						<a href="changePassword.jsp?user=${user}">修改密码</a>
					</h3>
				</td>
			</tr>
		</table>
	</div>
</div>
	<%@ include file="bottom.jsp"%>