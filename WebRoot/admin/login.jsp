<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.huang.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <base href="<%=basePath%>">
	<meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="huangyunan" content="huangyunan" />
	<meta name="description" content="My Site" />
	<meta name="keywords" content="key, words" />	
	<link rel="stylesheet" type="text/css" href="style.css" media="screen" />
	<title>news</title>
	
	<script language="javascript">
function login()
{
	var name=document.form1.userName.value;
	var pass=document.form1.password.value;
	if(name==""||name==null)
	{
		alert("用户名不能为空");
		return false;
	}else if(pass==""||pass==null)
	{
		alert("密码不能为空");
		return false;
	}else{
		document.form1.submit();
	}
}
</script>
</head>

<body>
<form name="form1" method="post" action="servlet/LoginAdmin" >
<table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="561" style="background:url(images/login/images/lbg.gif)"><table width="940" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="238" style="background:url(images/login/images/login01.jpg)">&nbsp;</td>
          </tr>
          <tr>
            <td height="190"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="208" height="190" style="background:url(images/login/images/login02.jpg)">&nbsp;</td>
                <td width="518" style="background:url(images/login/images/login03.jpg)"><table width="320" border="0" align="center" cellpadding="0" cellspacing="0">
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
                    <td height="40" width="100"><p>
                      <label>
                        <input name="userType" type="radio" id="userType_0" value="manager" checked="checked" />
                        管理员</label>
                      <br />
                      <label>
                        <input type="radio" name="userType" value="editor" id="userType_1" />
                        编辑员</label>
                      <br />
                    </p></td>
                    <td>&nbsp;</td>

                      <td height="60"><a href="javascript:;" onclick="return login()"><img src="images/login/images/login.gif" width="95" height="34" /></a></td>
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