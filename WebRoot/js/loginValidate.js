//前台登录验证
function login() {
	var uName=$("#userName").val();
	var uPassword=$("#password").val();
	var uType=$("#userType").val();
	if (uName=="")
	{
		alert("用户名不能为空");
	} else if (uPassword=="")
	{
		alert("密码不能为空");
	} else {
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+"user",null,callback);
	}
}


//callback
function callback(data) {
	alert(data);
	if ($.trim(data)=="欢迎你"||$.trim(data)=="欢迎你管理员"||$.trim(data)=="欢迎你编辑员")
	{
		$("form").submit();
	}
	if ($.trim(data)=="欢迎你管理员")
	{
		$("form").attr("action","admin/index_admin.jsp").submit();
	}
	if ($.trim(data)=="欢迎你编辑员")
	{
		$("form").attr("action","admin/index_editor.jsp").submit();
	}
}


//后台登陆验证
function loginAdmin(){
	var uName=$("#userName").val();
	var uPassword=$("#password").val();
	var uType="manager";
	var userTypes0=$("#userType_0").attr("checked");
	var userTypes1=$("#userType_1").attr("checked");
	if (uName=="")
	{
		alert("用户名不能为空");
	} else if (uPassword=="")
	{
		alert("密码不能为空");
	}else if (userTypes1=="checked")
	{
		uType="editor";
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+uType,null,callback);
	}else {
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+uType,null,callback);
	}
}


