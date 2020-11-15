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


</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		//$("form input[name=chk]").attr("checked",true); // 여러번 테스트시 문제를 발생시킬 수 있다.
		//.attr() : html의 텍스트적인 속성을 설정하거나 반환
		//.prop() : 객체의 자바스크립트 속성을 설정하거나 반환(true, false)
		$("form input[name=test1]").prop("readonly", true);
		$("form input[name=test2]").prop("disabled", true);
		$("form input[name=chk]").prop("checked", true);
		
		$("#img1").attr("src", "main2.jpg");
		//여러 속성 지정
		$("#img2").attr({src:"main1.jpg", alt:"메인1"});
	});
	
	$("#btn2").click(function(){
		$("form input[name=test1]").prop("readonly", false);
		$("form input[name=test2]").prop("disabled", false);
		$("form input[name=chk]").attr("checked",false);
		$("#img1").removeAttr("src");
		
	});
});
</script>
</head>
<body>
<form>
	<p> <input type="text" name="test1"> </p>
	<p> <input type="text" name="test2"> </p>
	<p> <input type="checkbox" name="chk"> </p>
	<p>
		<button type="button" id="btn1"> 속성 추가 </button>
		<button type="button" id="btn2"> 속성 제거 </button>
	</p>
</form>
<hr>

<img alt="" src="main1.jpg" id="img1" height="100" width="100">
<img alt="" src="main1.jpg" id="img2" height="100" width="100">
</body>
</html>