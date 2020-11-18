<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	/* 범위 뒤에 추가 */
	$("#btn1").click(function(){
		var s = $("#inputs").val();
		$("#p1").after("<p>"+s+"</p>");
	});
	/* 범위 앞에 추가 */
	$("#btn2").click(function(){
		var s = $("#inputs").val();
		$("#p1").before("<p>"+s+"</p>");
	});
	
	/* 아래로 이동 */
	$("#btn3").click(function(){
		$("#p3").after($("#p2"));
	});
});

$(function(){
	$("#btn4").click(function(){
		//내용만 제거 요소는 제거x
		$("#box").empty(); 
	});
	
	$("#btn5").click(function(){
		//내용, 요소 둘다 제거
		$("#box").remove(); 
		
	});
	
	$("#btn6").click(function(){
		$("#box").append("<p>CSS</p>");
	});
	
});
$(function(){
	var $temp=null;
	//잘라내기
	$("#btn7").click(function(){
		$temp=$(".p1").detach();//요소를 잘라내고 잘라낸 요소 반환
	});
	//복사하기
	$("#btn8").click(function(){
		if(!$temp)return false;
		$(".div1").append($temp);
	});
});
</script>

<body>
<div>
	<p id="p1">자바</p>
	<p id="p2">스프링</p>
	<p id="p3">JSP</p>
</div>
<div>
	<input type="text" id="inputs">
	<button type="button" id="btn1">자바뒤</button>
	<button type="button" id="btn2">자바앞</button>
	<button type="button" id="btn3">스프링이동</button>
</div>

<hr>

<div id="box">
	<p>웹</p>
	<p>자바</p>
</div>
<div>
	<button type="button" id="btn4">내용만제거</button>
	<button type="button" id="btn5">요소제거</button>
	<button type="button" id="btn6">내용추가</button>
	
</div>

<div>
	<p class="p1">웹</p>
	<p class="p2">자바</p>
	<div class="div1"></div>
</div>

<div>
	<button type="button" id="btn7">잘라내기</button>
	<button type="button" id="btn8">복사하기</button>
</div>
</body>
</html>