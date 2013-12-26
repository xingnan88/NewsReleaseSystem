<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>postNew</title>
</head>

<body>
<p align="center"><b>发表新闻</b></p>
<div align="center">
<form id="form1" name="form1" method="post"  action="servlet/AddNewsServlet">
   <p>
     标题：<input name="title" type="text" size="30" maxlength="50" />
   </p>
   <p>请选择新闻板块:</p>
   <p>
      <label>
      <input type="radio" name="type" value="1" id="type_0" />
       今日焦点</label>
     <br />
     <label>
       <input type="radio" name="type" value="2" id="type_1" />
       国内新闻</label>
     <br />
     <label>
       <input type="radio" name="type" value="3" id="type_2" />
       国际新闻</label>
     <br />
     <label>
       <input type="radio" name="type" value="4" id="type_3" />
       体育</label>
     <br />
     <label>
       <input type="radio" name="type" value="5" id="type_4" />
       军事</label>
     <br />
     <label>
       <input type="radio" name="type" value="6" id="type_5" />
       教育</label>
     <br />
     <label>
       <input type="radio" name="type" value="7" id="type_6" />
       娱乐</label>
     <br />
     <label>
       <input type="radio" name="type" value="8" id="type_7" />
       社会</label>
     <br />
   </p>
   <p>
     <label>
       <textarea name="content" id="textarea" cols="90" rows="30"></textarea>
     </label>
    <p>
     <input type="submit" value="提交">
     <input type="reset" value="重置">
     <p>
</form>
</div>
</body>
</html>
