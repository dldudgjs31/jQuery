<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>tab</title>
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
.ui-widget-header{
	background: none;
}

</style>
<script type="text/javascript">
$(function(){
	//$("#tab-container").tabs();
	//처음 켯을때 켜저잇을 tab 설정하는 방법
	//$("#tab-container").tabs("option","active",1);
	
	$("#tab-container").tabs({
		//event : 이벤트를발생시킨 객체에 대한 정보 
		//ui : 화면에 대한 정보
		beforeLoad:function(event,ui){
			ui.ajaxSettings.url+="?tmp="+new Date().getTime();
		}
	});
	
	//활성화 텝 구하기
	//var active=$("#tab-container").tabs("option","active"); => 활성화되는 탭을 반환
});
</script>
</head>
<body>
<div style="width: 700px; margin: 30px auto;">
	<div id="tab-container">
		<ul>
			<li><a href="t1.jsp"><span>공지사항</span></a></li>
			<li><a href="t2.jsp"><span>자주하는 질문</span></a></li>
			<li><a href="t3.jsp"><span>1대1 문의</span></a></li>
		</ul>

	</div>
</div>

</body>
</html>