<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>ע��</title>   
    <base href="<%=basePath%>"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.6.2.js"></script>
	<script type="text/javascript" src="js/registerValidate.js"></script>
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
  	<div id="error" style="font-weight:bold;color:red;"></div>
      <h2>ע��</h2>
      <p>��ӭע�ᣬע����̽�������ȡ���κη��á����ǳ�ŵ����������Ϣ��ȫ�����Ὣ���ṩ���κε�������</p>
      <input type="hidden" name="userType" value="user" id="userType"/>
      <table>
        <tr>
          <td style="vertical-align:top"><label for="username">�û���:</label></td>
          <td><input type="text" name="userName" maxlength="99" value="" style="width:150px" class="textInput" id="userName" />
           </td>
        </tr>
        <tr>
          <td><label for="password">����:</label></td>
          <td><input type="password" name="password" maxlength="99" value="" class="textInput" id="password"/></td>
        </tr>
        <tr>
          <td><label for="passwordAgain">ȷ������:</label></td>
          <td><input type="password" name="password2" maxlength="99" value="" class="textInput" id="password2" /></td>
        </tr>
        <tr>
          <td><label for="email">�����ʼ�:</label></td>
          <td><input type="text" name="email" value="" style="width:250px" class="textInput" id="email" /></td>
        </tr>
      </table>
      <p>�����û������⣬�����ʺ��޸�����ʱ��Ҫ�����ش�������⣬�⽫ȷ�����������ڽ��������޸Ĳ�����ʹ�����ʺŸ���ȫ��</p>
      <table>
        <tr>
          <td style="vertical-align:top"><label for="secretQ">��������:</label></td>
          <td><input type="text" name="question" value="" style="width:300px" class="textInput" id="question" />
            <br />
            <span class="note">����һ������Ժ����׻ش𣬱���ȴ���Ѳµ��𰸵����⡣����"�ҵ�һ����������ֽ�ʲô��"</span></td>
        </tr>
        <tr>
          <td><label for="answer">�����:</label></td>
          <td><input type="text" name="answer" value="" style="width:300px" class="textInput" id="answer" /></td>
        </tr>
      </table>
      <div class="formAction">
        <input type="button" value="�ύ" class="button" onclick="register()"/>
        <input type="reset" value="����" class="button" />
      </div>
  </div>
</div>
</body>
</html>
