<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>accordion</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Pathway+Gothic+One&family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.8.8/i18n/jquery.ui.datepicker-ko.js"></script>

<style type="text/css">
*{
font-family: 'Noto Sans KR', sans-serif;
}


</style>
<script type="text/javascript">
$(function(){
	//아코디언 기능 실행법
	//$("#accordion").accordion();
	//$("#accordion").accordion("option","active",1);
	//처음 열때 닫혀잇도록 설정
	$("#accordion").accordion({active:false, collapsible:true});
});
</script>
</head>
<body>
<div style="width: 700px; margin: 30px auto;">
	<div id="accordion">
		<h3>자바가 무엇인가요?</h3>
		<div>
			<p>객체지향 프로그램입니다.</p>
		</div>
		
		<h3>오라클이 무엇인가요?</h3>
		<div>
			<p>기적이요~</p>
		</div>
		
		<h3>사랑은요?</h3>
		<div>
			<p>몰라~</p>
		</div>
	</div>
</div>

</body>
</html>