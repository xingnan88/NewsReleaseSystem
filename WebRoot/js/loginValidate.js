//ǰ̨��¼��֤
function login() {
	var uName=$("#userName").val();
	var uPassword=$("#password").val();
	var uType=$("#userType").val();
	if (uName=="")
	{
		alert("�û�������Ϊ��");
	} else if (uPassword=="")
	{
		alert("���벻��Ϊ��");
	} else {
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+"user",null,callback);
	}
}


//callback
function callback(data) {
	alert(data);
	if ($.trim(data)=="��ӭ��"||$.trim(data)=="��ӭ�����Ա"||$.trim(data)=="��ӭ��༭Ա")
	{
		$("form").submit();
	}
	if ($.trim(data)=="��ӭ�����Ա")
	{
		$("form").attr("action","admin/index_admin.jsp").submit();
	}
	if ($.trim(data)=="��ӭ��༭Ա")
	{
		$("form").attr("action","admin/index_editor.jsp").submit();
	}
}


//��̨��½��֤
function loginAdmin(){
	var uName=$("#userName").val();
	var uPassword=$("#password").val();
	var uType="manager";
	var userTypes0=$("#userType_0").attr("checked");
	var userTypes1=$("#userType_1").attr("checked");
	if (uName=="")
	{
		alert("�û�������Ϊ��");
	} else if (uPassword=="")
	{
		alert("���벻��Ϊ��");
	}else if (userTypes1=="checked")
	{
		uType="editor";
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+uType,null,callback);
	}else {
		$.get("servlet/LoginAdmin?userName="+uName+"&password="+uPassword+"&userType="+uType,null,callback);
	}
}


