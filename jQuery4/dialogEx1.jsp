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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.8.8/i18n/jquery.ui.datepicker-ko.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		//간단한 모딜리스(modless) 대화상자
		$("#dlg1").dialog();
	});
	
	$("#btn2").click(function(){
		$("#dlg2").dialog({
			title:"대화상자",
			width:500,
			height:500
		});
		
	});
	
	$("#btn3").click(function(){
		//모달 대화상자
		$("#dlg3").dialog({
			title:"대화상자",
			modal:true,
			width:500,
			height:500
		});
	});
	
	$("#btn4").click(function(){
		$("<div>").dialog({
			title:"이미지등록",
			modal:true,
			width:500,
			height:500,
			open:function(){
				//대화상자가 열릴때 AJAX 방식으로 서버에 접속 정보를 가져와 출력
				//주의사항 : 퍼오는 파일에서 제이쿼리 태그가 잇으면 오류걸리니 거기껀 지워야함
				$(this).load("imgView.jsp");
			}
		});
	});
	
	$("#btn5").click(function(){
		$("#dlg5").dialog({
			title:"대화상자",
			modal:true,
			width:500,
			height:500
		});
	});
	$(".cancel").click(function(){
		$("#dlg5").dialog("close");
	});
	$("#btn6").click(function(){
		$("#dlg6").dialog({
			title:"대화상자",
			modal:true,
			width:500,
			height:"auto",
			open:function(){
				$(this).css("background","green");
			},
			buttons : {
				"확인":function(){
					alert("확인!");
				},
				"취소":function(){
					$(this).dialog("close");
				}
			}
		});
	});
});
</script>
<body>

<p>
	<button type="button" id="btn1">대화상자1</button>
	<button type="button" id="btn2">대화상자2</button>
	<button type="button" id="btn3">대화상자3</button>
	<button type="button" id="btn4">대화상자4</button>
	<button type="button" id="btn5">대화상자5</button>
	<button type="button" id="btn6">대화상자6</button>
</p>

<div id="dlg1" style="display: none;">
	<h3> 대화 상자1</h3>
	<p>대화 상자 입니다.</p>
</div>

<div id="dlg2" style="display: none;">
	<h3> 대화 상자2</h3>
	<p>대화 상자 입니다.</p>
</div>


<div id="dlg3" style="display: none;">
	<h3> 대화 상자3</h3>
	<p>대화 상자 입니다.</p>
</div>

<div id="dlg5" style="display: none;">
	<h3> 대화 상자5</h3>
	<p>
		<input type="text">
		<button type="button">확인</button>
		<button type="button" class="cancel">취소</button>
	</p>
</div>

<div id="dlg6" style="display: none;">
	<h3> 대화 상자6</h3>
	<p>대화 상자 입니다.</p>
</div>
</body>
</html>