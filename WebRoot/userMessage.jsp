<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="head.jsp"%>
<div id="mid">
	<div id="left">
		<table width="307" border="0">
			<tr>
				<td width="95">
					�û�����
				</td>
				<td width="202">
					${user.userName }
				</td>
			</tr>
			<tr>
				<td>
					�����ʼ���
				</td>
				<td>
					${user.email}
				</td>
			</tr>
			<tr>
				<td>
					ע��ʱ�䣺
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
						<a href="changePassword.jsp?user=${user}">�޸�����</a>
					</h3>
				</td>
			</tr>
		</table>
	</div>
</div>
	<%@ include file="bottom.jsp"%>