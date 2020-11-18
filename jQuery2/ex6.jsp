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
.yb{
	background: yellow;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		alert("환영...");
	});
	
	//click 이벤트를 발생시킴
	$("#btn").trigger("click");
});

$(function(){
	$("#btn").hover(
		function(){$(this).addClass("yb");},
		function(){$(this).removeClass("yb");}
	);
});

$(function(){
	$(".box span").hide();
	$(".box input").focus(function(){
		$(this).next("span").css("display","inline").fadeOut(2000);
	});
});
</script>
</head>
<body>
<div>
	<button type="button" id="btn">확인</button>
</div>
<hr>
<div class="box">
	<p> <input type="text"> <span>이름</span> </p>
	<p> <input type="password"> <span>패스워드</span> </p>
	<p> <button type="button"> 확인</button>
</div>
</body>
</html>