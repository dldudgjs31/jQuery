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
	border: 3px solid #999;
	margin: 30px auto;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("span ~ b").css("background","#ff0");// 모든 형제
	$("div  b").css("color","tomato");// 모든 자손
	$("div > b").css("border","2px solid #333");// 자식만(1단계)
	$("span.cls").css("background","blue"); // span태그이면서 class명이 cls인 태그
});
</script>
</head>
<body>
<div>
	<b>자바</b>
	<span class="cls">객체지향</span><br>
	<b>HTML</b>
	<b>JAVASCRIPT</b>
	<span>웹프로그램</span><br>
	<b class="cls">스프링</b>
	<span>프레임워크</span><br>
	<p>
		<b>css</b>
		<span class="cls">스타일</span>
	</p>
</div>
</body>
</html>