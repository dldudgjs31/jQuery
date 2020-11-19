<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대화상자 css 변경</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.8.8/i18n/jquery.ui.datepicker-ko.js"></script>
<style type="text/css">
/* 클래스명은 f12 => 바꿀부분의 클래스 찾기 */
.ui-widget-header {
	background: none;
	border: none;
	height: 35px;
	line-height: 35px;
	border-bottom: 1px solid #ccc;
	border-radius: 0;
}
</style>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		$("#dlg").dialog({
			modal:true,
			title:"일정등록",
			width:600,
			height:650,
			close:function (){
				
			}
		});
		
	});
	
});
</script>
</head>
<body>
<p> <button type="button" id="btn">확인</button> </p>

<div id="dlg" style="display: none;">
	<h3>일정입력</h3>
	<p> <input type="date" name="date"> </p>
	<p> <input type="text" name="subject" placeholder="제목을 입력하시오."> </p>
</div>
</body>
</html>