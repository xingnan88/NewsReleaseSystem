<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>		
			<div id="top">
				<div id="logo">
					<div class="login">
						<a href="login.jsp">注册</a>
					</div>
					<div class="login">
						<a href="#">登录</a>
					</div>
				</div>
				<div id="topics">
					<div class="thirds">
						<ul>
							<li>
								<a href="servlet/Backstage?data=1">今日焦点</a>
							</li>
							<li>
								<a href="servlet/Backstage?data=2">国内新闻</a>
							</li>
							<li>
								<a href="servlet/Backstage?data=3">国际新闻</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a href="servlet/Backstage?data=4">体育</a>
							</li>
							<li>
								<a href="servlet/Backstage?data=5">军事</a>
							</li>
							<li>
								<a href="servlet/Backstage?data=6">教育</a>
							</li>
						</ul>
					</div>
					<div class="thirds">
						<ul>
							<li>
								<a href="servlet/Backstage?data=7">娱乐</a>
							</li>
							<li>
								<a href="servlet/Backstage?data=8">社会</a>
							</li>
						</ul>
					</div>
				</div>
				<div id="search">
					<form method="post" action="?">
						<p>
							<input type="text" name="search" class="search" />
							<input type="submit" value="搜索" class="button" />
						</p>
					</form>
				</div>
			</div>