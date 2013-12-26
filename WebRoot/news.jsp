<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
	<%@ include file="head.jsp" %>
			<div id="mid">
				<div id="left">
					<div class="subheader">
						<p>
							在被埋长达8个多小时的漆黑绝境里，一位母亲拼命托举起怀中4岁半的儿子，直到救援人员赶到。灾难当头，为了护卫自己的孩子，33岁的年轻妈妈爆发出了惊人的毅力!!!!!
						</p>
					</div>
					<div class="left_articles">
						<h2>
							今日焦点
						</h2>
						<p>
							&nbsp;
						</p>
						<div class="container" id="idTransformView">
							<ul class="slider" id="idSlider">
								<li>
									<img src="images/01.jpg" class="bigimage"/ >
								</li>
								<li>
									<img src="images/02.jpg" class="bigimage" />
								</li>
								<li>
									<img src="images/03.jpg" class="bigimage" />
								</li>
							</ul>
							<ul class="num" id="idNum">
								<li>
									1
								</li>
								<li>
									2
								</li>
								<li>
									3
								</li>
							</ul>
						</div>


						<p>
							<script type="text/javascript">
	var $ = function(id) {
		return "string" == typeof id ? document.getElementById(id) : id;
	};

	var Class = {
		create : function() {
			return function() {
				this.initialize.apply(this, arguments);
			}
		}
	}

	Object.extend = function(destination, source) {
		for ( var property in source) {
			destination[property] = source[property];
		}
		return destination;
	}

	var TransformView = Class.create();
	TransformView.prototype = {
		//容器对象,滑动对象,切换参数,切换数量
		initialize : function(container, slider, parameter, count, options) {
			if (parameter <= 0 || count <= 0)
				return;
			var oContainer = $(container), oSlider = $(slider), oThis = this;

			this.Index = 0;//当前索引

			this._timer = null;//定时器
			this._slider = oSlider;//滑动对象
			this._parameter = parameter;//切换参数
			this._count = count || 0;//切换数量
			this._target = 0;//目标参数

			this.SetOptions(options);

			this.Up = !!this.options.Up;
			this.Step = Math.abs(this.options.Step);
			this.Time = Math.abs(this.options.Time);
			this.Auto = !!this.options.Auto;
			this.Pause = Math.abs(this.options.Pause);
			this.onStart = this.options.onStart;
			this.onFinish = this.options.onFinish;

			oContainer.style.overflow = "hidden";
			oContainer.style.position = "relative";

			oSlider.style.position = "absolute";
			oSlider.style.top = oSlider.style.left = 0;
		},
		//设置默认属性
		SetOptions : function(options) {
			this.options = {//默认值
				Up : true,//是否向上(否则向左)
				Step : 5,//滑动变化率
				Time : 10,//滑动延时
				Auto : true,//是否自动转换
				Pause : 2000,//停顿时间(Auto为true时有效)
				onStart : function() {
				},//开始转换时执行
				onFinish : function() {
				}//完成转换时执行
			};
			Object.extend(this.options, options || {});
		},
		//开始切换设置
		Start : function() {
			if (this.Index < 0) {
				this.Index = this._count - 1;
			} else if (this.Index >= this._count) {
				this.Index = 0;
			}

			this._target = -1 * this._parameter * this.Index;
			this.onStart();
			this.Move();
		},
		//移动
		Move : function() {
			clearTimeout(this._timer);
			var oThis = this, style = this.Up ? "top" : "left", iNow = parseInt(this._slider.style[style]) || 0, iStep = this
					.GetStep(this._target, iNow);

			if (iStep != 0) {
				this._slider.style[style] = (iNow + iStep) + "px";
				this._timer = setTimeout(function() {
					oThis.Move();
				}, this.Time);
			} else {
				this._slider.style[style] = this._target + "px";
				this.onFinish();
				if (this.Auto) {
					this._timer = setTimeout(function() {
						oThis.Index++;
						oThis.Start();
					}, this.Pause);
				}
			}
		},
		//获取步长
		GetStep : function(iTarget, iNow) {
			var iStep = (iTarget - iNow) / this.Step;
			if (iStep == 0)
				return 0;
			if (Math.abs(iStep) < 1)
				return (iStep > 0 ? 1 : -1);
			return iStep;
		},
		//停止
		Stop : function(iTarget, iNow) {
			clearTimeout(this._timer);
			this._slider.style[this.Up ? "top" : "left"] = this._target + "px";
		}
	};

	window.onload = function() {
		function Each(list, fun) {
			for ( var i = 0, len = list.length; i < len; i++) {
				fun(list[i], i);
			}
		}
		;

		var objs = $("idNum").getElementsByTagName("li");

		var tv = new TransformView("idTransformView", "idSlider", 168, 3, {
			onStart : function() {
				Each(objs, function(o, i) {
					o.className = tv.Index == i ? "on" : "";
				})
			}//按钮样式
			});

		tv.Start();

		Each(objs, function(o, i) {
			o.onmouseover = function() {
				o.className = "on";
				tv.Auto = false;
				tv.Index = i;
				tv.Start();
			}
			o.onmouseout = function() {
				o.className = "";
				tv.Auto = true;
				tv.Start();
			}
		})

	}
</script>
							<div>
								<table border="0">
									<c:forEach items="${requestScope.data1}" var="news1"
										varStatus="status1">
										<c:if test="${status1.index%2==0}">
											<tr>
												<td>
													<a href="servlet/ReadNews?titleid=${news1.id }">${news1.title}</a>
												</td>
										</c:if>
										<c:if test="${status1.index%2!=0}">
											<td>
												<a href="servlet/ReadNews?titleid=${news1.id }">${news1.title}</a>
											</td>
										</c:if>
									</c:forEach>
								</table>
							</div>
					</div>
					<div class="left_box">
						<p></p>
					</div>
					<div class="thirds">
						<table border="0">
							<tr>
								<td>
									<b><a class="title">国内新闻</a> </b>
								</td>
							</tr>
							<tr>
								<td>
									<img src="${pageContext.request.contextPath}/images/guonei.jpg"
										alt="Image" width="120" height="88" class="image"
										title="guonei" />
								</td>
							</tr>
							<c:forEach items="${requestScope.data2}" var="news2">
								<tr>
									<td>
										<a href="servlet/ReadNews?titleid=${news2.id }">${news2.title}</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="thirds">
						<table border="0">
							<tr>
								<td>
									<b><a  class="title">国际新闻</a> </b>
								</td>
							</tr>
							<tr>
								<td>
									<img src="${pageContext.request.contextPath}/images/guowai.jpg"
										alt="Image" width="120" height="88" class="image"
										title="guowai" />
								</td>
							</tr>
							<c:forEach items="${requestScope.data3}" var="news3">
								<tr>
									<td>
										<a href="servlet/ReadNews?titleid=${news3.id }">${news3.title
											}</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="thirds">
						<table border="0">
							<tr>
								<td>
									<b><a  class="title">社会</a> </b>
								</td>
							</tr>
							<tr>
								<td>
									<img
										src="${pageContext.request.contextPath}/images/mingsheng.jpg"
										alt="Image" width="120" height="88" class="image"
										title="mingsheng" />
								</td>
							</tr>
							<c:forEach items="${requestScope.data8}" var="news8">
								<tr>
									<td>
										<a href="servlet/ReadNews?titleid=${news8.id }">${news8.title
											}</a>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>

				<div id="right">
					<div class="right_articles">
						<table border="0">
							<tr>
								<td>
									<a ><b>体育</b> </a>
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
									<a ><b>军事</b> </a>
								</td>
							</tr>
							<c:forEach items="${requestScope.data5}" var="news5"
								varStatus="status5">
								<c:if test="${status5.count==1}">
									<tr>
										<td>
											<img
												src="${pageContext.request.contextPath}/images/junshi.jpg"
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
									<a ><b>教育</b> </a>
								</td>
							</tr>
							<c:forEach items="${requestScope.data6}" var="news6"
								varStatus="status6">
								<c:if test="${status6.count==1}">
									<tr>
										<td>
											<img
												src="${pageContext.request.contextPath}/images/jiaoyu.jpg"
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