function addNews(){
	var titleNode=$("#addTitle").val();
	var authorNode=$("#addAuthor").val();
	var contentNode=$("#addContent").val();
	var typeNode=$("#addType").val();
	$.post("servlet/AddNewsServlet?title="+titleNode+"&author="+authorNode+"&content="+contentNode+"&type="+typeNode,null,function (data){
		alert(data);
	});
}

function deleteNews(id){
	$.post("servlet/DeleteServlet?id="+id,null,function (data){
		alert(data);
		$("#"+id).remove();
	});
}

