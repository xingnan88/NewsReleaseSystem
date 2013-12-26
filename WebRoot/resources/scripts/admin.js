function openTab2() {
	$("#tab1").css("display","none");
	$("#tab2").css("display","block");
	$("#tab3").css("display","none");
	$("#header1").attr("class","default-tab");
	$("#header2").attr("class","current");
	$("#header3").attr("class","default-tab");
	
}

function openTab3() {
	$("#tab1").css("display","none");
	$("#tab3").css("display","block");
	$("#tab2").css("display","none");
	$("#header1").attr("class","default-tab");
	$("#header3").attr("class","current");
	$("#header2").attr("class","default-tab");
}


function deleteUser(id){
	$.post("servlet/UserDelete?id="+id,null,function(data){
		alert(data);
		$("#"+id).remove();
	});
}
