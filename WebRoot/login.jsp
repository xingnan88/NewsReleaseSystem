<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="com.huang.news.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
    <base href="<%=basePath%>">
	<meta http-equiv="content-type" content="text/html;charset=gbk" />
	<meta name="huangyunan" content="huangyunan" />
	<meta name="description" content="My Site" />
	<meta name="keywords" content="key, words" />	
	<script type="text/javascript" src="js/jquery-1.6.2.js"></script>
	<script type="text/javascript" src="js/loginValidate.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<title>news</title>
</head>

<body style="font-size: 13px;font-weight: bold;">
<form name="form1" method="post" action="<%=basePath %>servlet/GetNewsServlet?userType=user">
	<input type="hidden" name="userType" id="userType" value="user"/>
<table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="561" style="background:url(images/login/images/lbg.gif)">
        <table width="940" border="0" align="center" cellpadding="0" cellspacing="0" id="mytable">
          <tr>
            <td height="238" style="background:url(images/login/images/login011.jpg)">&nbsp;</td>
          </tr>
          <tr>
            <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(images/login/images/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(images/login/images/login03.jpg)">
                <table id="tb" width="320" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="40" height="50"><img src="images/login/images/user.gif" width="30" height="30"></td>
                    <td width="38" height="50">用户</td>
                    <td width="242" height="50"><input type="text" name="userName" id="userName" style="width:164px; height:32px; line-height:34px; background:url(images/login/images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; font-family:Verdana, Geneva, sans-serif;"></td>
                  </tr>
                  <tr>
                    <td height="50"><img src="images/login/images/password.gif" width="28" height="32"></td>
                    <td height="50">密码</td>
                    <td height="50"><input type="password" name="password" id="password" style="width:164px; height:32px; line-height:34px; background:url(images/login/images/inputbg.gif) repeat-x; border:solid 1px #d1d1d1; font-size:9pt; "></td>
                  </tr>
                  <tr>
                    <td height="40" width="100"></td>
                    <td>&nbsp;</td>
                     <td height="60"><img src="images/login/images/login.gif" width="95" height="34" onclick="login()" style="cursor: pointer;"/></td>
                  </tr>
                </table></td>
                <td width="214" style="background:url(images/login/images/login04.jpg)" >&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="133" style="background:url(images/login/images/login05.jpg)">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>