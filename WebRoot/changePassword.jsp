<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="head.jsp"%>
<div id="mid">
	<div id="left">
		<form id="change" method="post" action="servlet/ChangePassword?userType=user">
			<input type="hidden" name="userType" value="user" />

			<table width="600" height="" border="0">
				<tr>

					<td width="83" height="37">
						�û�����
					</td>
					<td width="501">
						${user.userName}
						<input type="hidden" name="userName" value="${user.userName}" />
					</td>
				</tr>
				<tr>
					<td width="83" height="37">
						�����룺
					</td>
					<td width="501">
						<label for="oldPassword"></label>
						<input type="password" name="oldPassword" id="oldPassword" />
					</td>
				</tr>
				<tr>
					<td height="37">
						�����룺
					</td>
					<td>
						<label for="newPassword">
							<input type="password" name="newPassword" id="newPassword" />
						</label>
					</td>
				</tr>
				<tr>
					<td height="37">
						�ظ������룺
					</td>
					<td>
						<label for="newPassword2"></label>
						<input type="password" name="newPassword2" id="newPassword2" />
					</td>
				</tr>

				<tr>
					<td height="37">
						<input type="submit" name="submit" id="submit" value="�ύ" />
					</td>
					<td height="37">
						<input type="reset" name="reset" id="reset" value="����" />
					</td>
				</tr>
			</table>
		</form>
	</div>


</div>
<%@ include file="bottom.jsp"%>