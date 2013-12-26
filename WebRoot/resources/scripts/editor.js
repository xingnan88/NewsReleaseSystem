function openTab2() {
	$("#tab1").css("display","none");
	$("#tab2").css("display","block");
	$("#tab3").css("display","none");
	$("#tab6").css("display","none");
	$("#header1").attr("class","default-tab");
	$("#header2").attr("class","current");
	$("#header3").attr("class","default-tab");
	$("#header6").attr("class","default-tab");
	
}

function openTab3() {
	$("#tab1").css("display","none");
	$("#tab3").css("display","block");
	$("#tab2").css("display","none");
	$("#tab6").css("display","none");
	$("#header1").attr("class","default-tab");
	$("#header3").attr("class","current");
	$("#header2").attr("class","default-tab");
	$("#header6").attr("class","default-tab");
}

function openTab6() {
	$("#tab1").css("display","none");
	$("#tab6").css("display","block");
	$("#tab2").css("display","none");
	$("#tab3").css("display","none");
	$("#header1").attr("class","default-tab");
	$("#header6").attr("class","current");
	$("#header2").attr("class","default-tab");
	$("#header3").attr("class","default-tab");
}


function openTab4(c4) {
	$.post("servlet/BackReadNews?titleid="+c4,null,function (data){
		$("#tab1").html(data);
	});
}


function openTab5(c5) {
	$.post("servlet/UpdateList?titleid="+c5,null,function (data){
		$("#tab1").html(data);
	});
}


