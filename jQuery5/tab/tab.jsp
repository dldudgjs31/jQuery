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
	$("#tab-container").tabs();
});
</script>
</head>
<body>
<div style="width: 700px; margin: 30px auto;">
	<div id="tab-container">
		<ul>
			<li><a href="#tab-1"><span>공지사항</span></a></li>
			<li><a href="#tab-2"><span>자주하는 질문</span></a></li>
			<li><a href="#tab-3"><span>1대1 문의</span></a></li>
		</ul>
		
		<div id="tab-1">공지사항입니다.</div>
		<div id="tab-2">자주하는 질문입니다.</div>
		<div id="tab-3">1:1문의입니다.</div>
	</div>
</div>

</body>
</html>