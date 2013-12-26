<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="head.jsp"%>
<div id="mid">
	<div id="left">
		<h1>
			${requestScope.news.title}
		</h1>
		<br />
		${requestScope.news.content}
	</div>

	<div id="right">
		<div class="right_articles">
			<table border="0">
				<tr>
					<td>
						<a href=""><b>体育</b>
						</a>
					</td>
				</tr>
				<c:forEach items="${requestScope.data4}" var="news4"
					varStatus="status4">
					<c:if test="${status4.count==1}">
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/tiyu.jpg"
									alt="Image" title="tiyu" class="image" />
								<a href="servlet/ReadNews?titleid=${news4.id }">${news4.title
									}</a>
							</td>
						</tr>
					</c:if>
					<c:if test="${status4.count!=1}">
						<tr>
							<td>
								<a href="servlet/ReadNews?titleid=${news4.id }">${news4.title
									}</a>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<div class="right_articles">
			<table border="0">
				<tr>
					<td>
						<a href=""><b>军事</b>
						</a>
					</td>
				</tr>
				<c:forEach items="${requestScope.data5}" var="news5"
					varStatus="status5">
					<c:if test="${status5.count==1}">
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/junshi.jpg"
									alt="Image" title="tiyu" class="image" />
								<a href="servlet/ReadNews?titleid=${news5.id }">${news5.title
									}</a>
							</td>
						</tr>
					</c:if>
					<c:if test="${status5.count!=1}">
						<tr>
							<td>
								<a href="servlet/ReadNews?titleid=${news5.id }">${news5.title
									}</a>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<div class="right_articles">
			<table border="0">
				<tr>
					<td>
						<a href=""><b>教育</b>
						</a>
					</td>
				</tr>
				<c:forEach items="${requestScope.data6}" var="news6"
					varStatus="status6">
					<c:if test="${status6.count==1}">
						<tr>
							<td>
								<img src="${pageContext.request.contextPath}/images/jiaoyu.jpg"
									alt="Image" title="tiyu" class="image" />
								<a href="servlet/ReadNews?titleid=${news6.id }">${news6.title
									}</a>
							</td>
						</tr>
					</c:if>
					<c:if test="${status6.count!=1}">
						<tr>
							<td>
								<a href="servlet/ReadNews?titleid=${news6.id }">${news6.title
									}</a>
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</table>
		</div>

	</div>
</div>
<%@ include file="bottom.jsp"%>