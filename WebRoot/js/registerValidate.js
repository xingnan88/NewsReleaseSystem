function register() {
	var userTypeNode=$("#userType").val();
	var userNameNode=$("#userName").val();
	var passwordNode=$("#password").val();
	var password2Node=$("#password2").val();
	var emailNode=$("#email").val();
	var questionNode=$("#question").val();
	var answerNode=$("#answer").val();
	$.get("servlet/RegisterServlet?userName="+userNameNode+"&password="+passwordNode+"&email="+emailNode+"&question="+questionNode+"&answer="+answerNode+"&userType="+userTypeNode,null,function(data){
		alert(data);
	});
}


