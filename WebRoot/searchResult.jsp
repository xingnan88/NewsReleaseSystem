<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="head.jsp"%>
<div id="mid">
	<div id="left">

		<p>
			<h3>
				一共找到条
				<a>${size}</a>相似记录
			</h3>
		</p>
		<table width="" border="0">
			<c:forEach var="news" items="${news}">
				<tr>
					<td>
						<h3>
							<a href="servlet/ReadNews?titleid=${news.id}">${news.title}</a>
						</h3>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</div>
<%@ include file="bottom.jsp"%>
