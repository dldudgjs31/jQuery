<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
<script type="text/javascript">
$(function(){
	var n =0;
	$("#btn").click(function(){
		n++;
		var s = "<span class='btnSpan' style='display:block;'>확인-"+n+"</span>";
		$("#box").append(s);
	});
});

$(function(){
	//동적으로 추가된 span은 이벤트가 등록되지 않는다.
	/* $(".btnSpan").click(function(){
		alert("환영...");
	}); */
	
	//동적으로 추가된 객체의 이벤트 처리
	$("body").on("click",".btnSpan",function(){
		//alert("환영...!");
		
		//자신의 HTML 가져오기
		//	alert($(this).parent().html());
		var s=$(this).clone().wrapAll("<div>").parent().html();
		alert(s);
	});
	
});
</script>
</head>
<body>
<div id="box">
	<span class="btnSpan" style="display: block;">확인</span>
</div>
<p>
	<button type="button" id="btn">등록</button>
</p>
</body>
</html>