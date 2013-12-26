<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.jxust.news.*"%>
<%@page import="java.sql.ResultSet"%>
<% 
    Database database=new Database();  
%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="huangyunan" content="huangyunan" />
	<meta name="description" content="My Site" />
	<meta name="keywords" content="key, words" />	
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<title>news</title>
</head>
<body>
<div align="center">
	<div id="content">
		
		
		<div id="logo">
			<h1><br /></h1><h1><a href="#" title="news">&nbsp;新闻网</a></h1>
			<p>&nbsp;</p>
		
	    </div>
				

		<div id="topics">
			<div class="thirds">
				<ul>
					<li><a href="#">今日焦点</a></li>
					<li><a href="#">国内新闻</a></li>
					<li><a href="#">国际新闻</a></li>
				</ul>
			</div>
			<div class="thirds">
				<ul>
					<li><a href="#">体育</a></li>
					<li><a href="#">军事</a></li>
					<li><a href="#">教育</a></li>
				</ul>
			</div>
            <div class="thirds">
				<ul>
					<li><a href="#">娱乐</a></li>
					<li><a href="#">社会</a></li>
				</ul>
			</div>
		</div>
		<div id="search">
			<form method="post" action="?">
				<p><input type="text" name="search" class="search" /> <input type="submit" value="搜索" class="button" /></p>
			</form>
		</div>
							
		<div id="left">
			<div class="subheader">
				<p>在被埋长达8个多小时的漆黑绝境里，一位母亲拼命托举起怀中4岁半的儿子，直到救援人员赶到。灾难当头，为了护卫自己的孩子，33岁的年轻妈妈爆发出了惊人的毅力!!!!!</p>
		  </div>
			<div class="left_articles">
				<h2>今日焦点</h2>
			  <p>&nbsp;</p>
			  <div class="container" id="idTransformView">
			    <ul class="slider" id="idSlider">
			      <li><img src="images/01.jpg" class="bigimage"/ ></li>
			      <li><img src="images/02.jpg" class="bigimage"/></li>
			      <li><img src="images/03.jpg" class="bigimage"/></li>
		        </ul>
			    <ul class="num" id="idNum">
			      <li>1</li>
			      <li>2</li>
			      <li>3</li>
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
				this._timer = setTimeout( function() {
					oThis.Move();
				}, this.Time);
			} else {
				this._slider.style[style] = this._target + "px";
				this.onFinish();
				if (this.Auto) {
					this._timer = setTimeout( function() {
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
                <%
 					database.OpenConn();
 					 ResultSet rs1=database.executeQuery("select * from news_title where typeid=1");
 					 int i=0;	 
  					while (rs1.next())
 					 {
 					    i++;
 					    if(i%2!=0)
 					    {
  				%>
  					<p><a href="readnew.jsp?titleid=<%=rs1.getString("id")%>"><%=rs1.getString("title")%></a>
  				<%
  				        }
  				        else 
  				        {
  			     %>
  				        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="readnew.jsp?titleid=<%=rs1.getString("id")%>"><%=rs1.getString("title")%></a></p>
  				<%      }   
 					  }
 				 	database.closeConn();
 					 database.closeStmt();
 				%>    
                </div>
			</div>
			<div class="left_box">
				<p></p>
			</div>
			<div class="thirds">
				<table border="0">
				<tr><td><b><a href="#" class="title">国内新闻</a></b></td></tr>
				<%
 					database.OpenConn();
 				 	ResultSet rs2=database.executeQuery("select * from news_title where typeid=2");
 				 	int count2=0;
  					while (rs2.next())
  					{
  						count2++;
  						if (count2==1)
  						{
  						%>
  						<tr><td><img src="images/guonei.jpg" alt="Image" width="120" height="88" class="image" title="guonei" /><b><a href="readnew.jsp?titleid=<%=rs2.getString("id")%>"><%=rs2.getString("title")%></a></b></td></tr> 
  						<%
  						}
  						else{
  				%>
  					<tr><td><a href="readnew.jsp?titleid=<%=rs2.getString("id")%>"><%=rs2.getString("title")%></a></td></tr>
  				<%		}
 					 }
  				database.closeConn();
 				database.closeStmt();
 				%>
 				</table>
          </div>
			<div class="thirds">
			  <p><b><a href="" class="title">国际新闻</a></b></p>
                  <table border="0">
				<%
 					database.OpenConn();
 					 ResultSet rs3=database.executeQuery("select * from news_title where typeid=3");
 					 int count3=0;
  					 while (rs3.next())
 					 {
 						count3++;
 					 	if (count3==1)
 					 	{
 					 	%>
 					 		<tr><td><img src="images/guowai.jpg" alt="Image" width="120" height="88" class="image" title="guowai" /><b><a href="readnew.jsp?titleid=<%=rs3.getString("id")%>"><%=rs3.getString("title")%></a></b></td></tr>      
 					 	<%
 					 	}
 					 	else {
  				%>
  					<tr><td><a href="readnew.jsp?titleid=<%=rs3.getString("id")%>"><%=rs3.getString("title")%></a></td></tr>
  				<%
						}  				
 					 }
 				 	 database.closeConn();
 					 database.closeStmt();
 				%>
 				  </table>    
          </div>
          			<div class="thirds">
				<p><b><a href="" class="title">社会</a></b></p>           
<%
 database.OpenConn();
  ResultSet rs8=database.executeQuery("select * from news_title where typeid=8");
  %>
   <table border="0">
   <tr><td><img src="${pageContext.request.contextPath}/images/mingsheng.jpg" alt="Image" width="120" height="88" class="image" title="mingsheng" /></td></tr>
  <%
  while (rs8.next())
  {
  	%>	
  	<tr><td><a href="/news2/readnew.jsp?titleid=<%=rs8.getString("id")%>"><%=rs8.getString("title")%></a></td></tr>
  	<%
  }
  database.closeConn();
  database.closeStmt();
 %>
	</table>
			</div>

		</div>	
		
		<div id="right">
			<div class="right_articles">
              <table border="0">
              <tr><td><a href=""><b>体育</b></a></td></tr>
<%
  database.OpenConn();
  ResultSet rs4=database.executeQuery("select * from news_title where typeid=4");
  int count4=0;
  while (rs4.next())
  {
  	count4++;
  	if (count4==1)
  	{
  	%>
  	<tr><td><img src="images/tiyu.jpg" alt="Image" title="tiyu" class="image" /><b><a href="readnew.jsp?titleid=<%=rs4.getString("id")%>"><%=rs4.getString("title")%></a></b></td></tr>
  	<%
  	}
  	else{
    %>
  	<tr><td><a href="readnew.jsp?titleid=<%=rs4.getString("id")%>"><%=rs4.getString("title")%></a></td></tr>
  	<%
  	}
  }
  database.closeConn();
  database.closeStmt();
 %>
    		</table>
		  </div>
			<div class="right_articles">
			<table border="0">
            <tr><td><a href=""><b>军事</b></a></td></tr>	
 <%
  database.OpenConn();
  ResultSet rs5=database.executeQuery("select * from news_title where typeid=5");
  int count5=0;
  while (rs5.next())
  {
   count5++;
   if (count5==1)
   {
   %>
   <tr><td><img src="images/junshi.jpg" alt="Image" title="junshi" class="image" /><b><a href="readnew.jsp?titleid=<%=rs5.getString("id")%>"><%=rs5.getString("title")%></a></b></td></tr>
   <%
   }
      else{

  %>

  	<tr><td><a href="readnew.jsp?titleid=<%=rs5.getString("id")%>"><%=rs5.getString("title")%></a></td></tr>
  <%
     }
  }
  database.closeConn();
  database.closeStmt();
 %>
			</table>
          </div>
			<div class="right_articles">
			<table border="0">
            <tr><td><a href=""><b>教育</b></a></td></tr>
				
<%
  database.OpenConn();
  ResultSet rs6=database.executeQuery("select * from news_title where typeid=6");
  int count6=0;
  while (rs6.next())
  {
 	 count6++;
 	 if (count6==1)
 	 {
 	 %>
 	 <tr><td><img src="images/jiaoyu.jpg" alt="Image" title="jiaoyu" class="image" /><b><a href="readnew.jsp?titleid=<%=rs6.getString("id")%>"><%=rs6.getString("title")%></a></b></td></tr>
 	 <%
 	 }
 	 else
 	 {
  %>
  	<tr><td><p><a href="readnew.jsp?titleid=<%=rs6.getString("id")%>"><%=rs6.getString("title")%></a></p></td></tr>
  	<%
  	}
  }
  database.closeConn();
  database.closeStmt();
 %>
   </table>
          </div>
			
	  </div>
	</div>	
			<div id="footer" >
        <a href="">新闻网简介</a> |<a href=""> 关于我们</a> |<a href=""> 联系我们</a> |<a href=""> 我要链接</a> |<a href=""> 版权声明</a> |<a href=""> 法律顾问</a> |<a href=""> 广告服务</a>　
            </div>



</body>
</html>