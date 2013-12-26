<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>注册</title>   
    <base href="<%=basePath%>"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	body{
  	 background-image:url(images/bg1.jpg);
  	 height:600px;
  	 text-align: center;
   font: 12px Arial, Helvetica, sans-serif;
   color: black;
}
#pageHolder{
   width: 500px;
   margin: 0 auto;
   text-align: left;
}
.action{
   background-color: white;
   padding: 12px;
   margin-top: 12px;
   border-bottom: 1px solid #777;
   border-left: 1px solid #AAA;
   background: url(images/bg_rounded.gif) no-repeat right top;
}
label{
   float: left;
   width: 120px;
   margin-right: 5px;
   margin-top: 1px;
   text-align: right;
   font-size: 12px;
   font-weight: bold;
}
input .textInput{
   border: 1px solid #BBB;
   border-top-color: #666;
   border-left-color: #666;
   padding: 3px;
   width: 300px;
   background: white url(images/bg_textfield.gif) repeat-x top;
}
div.formAction{
   margin: 20px -12px -12px -12px;
   background: url(images/bg_gray.gif);
   padding: 12px 10px;
   width: 478px;
   text-align: left;
   font-size: 12px;
}
div.formAction input{
   font-size: 16px;
   margin-left: 12px;
}
input.button{
   border: 2px solid #AAA;
   border-top-color: #DDD;
   border-left-color: #ddd;
   color: #444;
   font-weight: bold;
   background: URL(images/bg_button.jpg) repeat-x left;
}
</style>
  </head>
  
  <body>
<div id="pageHolder">
  <div class="action">
    <form name="registerActionForm" method="POST" action="servlet/LoginServlet">
      <h2>注册</h2>
      <p>欢迎注册，注册过程将不会收取您任何费用。我们承诺保护您的信息安全，不会将它提供给任何第三方。</p>
      <table>
        <tr>
          <td style="vertical-align:top"><label for="username">用户名:</label></td>
          <td><input type="text" name="userName" maxlength="99" value="" style="width:150px" class="textInput" id="username" />
           </td>
        </tr>
        <tr>
          <td><label for="password">密码:</label></td>
          <td><input type="password" name="password" maxlength="99" value="" class="textInput" /></td>
        </tr>
        <tr>
          <td><label for="passwordAgain">确认密码:</label></td>
          <td><input type="password" name="passwordConfirm" maxlength="99" value="" class="textInput" id="passwordAgain" /></td>
        </tr>
        <tr>
          <td><label for="email">电子邮件:</label></td>
          <td><input type="text" name="email" value="" style="width:250px" class="textInput" id="email" /></td>
        </tr>
      </table>
      <p>请设置机密问题，当此帐号修改密码时会要求您回答机密问题，这将确保是您本人在进行密码修改操作，使您的帐号更安全。</p>
      <table>
        <tr>
          <td style="vertical-align:top"><label for="secretQ">密码问题:</label></td>
          <td><input type="text" name="question" value="" style="width:300px" class="textInput" id="secretQ" />
            <br />
            <span class="note">输入一个你可以很容易回答，别人却很难猜到答案的问题。例如"我的一个宠物的名字叫什么？"</span></td>
        </tr>
        <tr>
          <td><label for="secretA">问题答案:</label></td>
          <td><input type="text" name="answer" value="" style="width:300px" class="textInput" id="secretA" /></td>
        </tr>
      </table>
      <div class="formAction">
        <input type="submit" value="提交" class="button" />
        <input type="reset" value="重置" class="button" />"
      </div>
    </form>
  </div>
</div>
</body>
</html>
