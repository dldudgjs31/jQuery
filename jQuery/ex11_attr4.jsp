<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.box{
	width: 200px;
	height: 200px;
	line-height: 200px;
	margin: 30px auto;
	border: 3px solid #ccc;
	font-weight: 700;
	text-align: center;
}
.yb{
	background: yellow;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var s="<p><b>안녕</b>하세요</p>";
		$("#resultLayout").html(s);//innerHTML 개념
	});
	$("#btn2").click(function(){
		var s=$("#subject").html();
		alert(s);
	});
	$("#btn3").click(function(){
		var s="<p><b>안녕</b>하세요</p>";
		$("#resultLayout").text(s);//innerTEXT개념
	});
	$("#btn4").click(function(){
		var s=$("#subject").text();
		alert(s);
	});
});
</script>
</head>
<body>
<div id="resultLayout"></div>
<hr>
<div id="subject">
	<p><b>자바</b></p>
	<p><b>안드로이드</b></p>
</div>
<hr>
<div>
	<button type="button" id="btn1">html(값) 설정</button>
	<button type="button" id="btn2">html() 반환</button>
	<button type="button" id="btn3">text(값) 설정</button>
	<button type="button" id="btn4">text() 반환</button>
</div>

</body>
</html>