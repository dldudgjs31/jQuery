<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>date 관련</title>
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
	//datepicker script가 잇어야함 ^
	//$("#date1").datepicker();
	
		//년도가 월 앞에 오도록 설정
	$("#date1").datepicker({
		showMonthAfterYear:true
	});
});
$(function(){
	//선택할 수 있는 날짜 범위 설정 (예약할때 유용)
/* 	$("#date2").datepicker({
		showMonthAfterYear:true
		//5일간 설정
		//,minDate:0, maxDate:"+5D"
		//월/일 설정
		,minDate:0, maxDate:"+1M +5D"
	}); */
	
	//직접 문자열을 통해 날짜 입력도 가능함
 	$("#date2").datepicker({
		showMonthAfterYear:true
		,defaultDate:"2020-12-10"
		,minDate:"2020-12-05", maxDate:"2020-12-25"
	}); 
	
	
});
$(function(){
 	$("#date3").datepicker({
 		showOn:"button"
 		,buttonImage:"calendar.gif"
 		,buttonImageOnly:true
		,showMonthAfterYear:true
		,monthNames:["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"]
		,monthNamesShort:["1","2","3","4","5","6","7","8","9","10","11","12"]
	}); 
	$(".ui-datepicker-trigger").css({position:"relative",top:"3px"});
});
</script>
</head>
<body>
<div style="width: 700px; margin: 30px auto;">

<p> <input type="text" readonly="readonly" id="date1"></p> 
<p> <input type="text" readonly="readonly" id="date2"></p> 
<p> <input type="text" readonly="readonly" id="date3" style="margin-right:6px;"></p> 

</div>

</body>
</html>