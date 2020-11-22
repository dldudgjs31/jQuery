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
.faq .clsQ{
	border: 1px solid #777;
	cursor: pointer;
}
.faq .clsA{
	background: #efefef;
	display: none;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	// Q&A 만들기
	$(".clsQ").click(function(){
		var isHidden= $(this).next().is(":hidden");//숨겨져 잇으면 true
		if(isHidden){
			$(".clsA").hide();
			$(this).next().show();
		}else{
		$(this).next().hide();
		}
	});
});

$(function(){
	$("#btn").click(function(){
		$("#subject div").each(function(idx){
			//console.log(idx); //=> div 개수만큼 console에 출력됨
			var v = $(this).is(":visible");// is로 보여지는지 여부 확인
			if(v){
				$(this).hide(100);
			}else{
				$(this).show(100);
			}
		});
	});
});
</script>
</head>
<body>
<table class="faq" style="width: 500px; border-collapse: collapse;">

<tr height="30" class="clsQ">
	<td> 자바는 어떻게 공부해야 하나요? </td>
</tr>
<tr height="30" class="clsA">
	<td> 열공하면 됩니다. </td>
</tr>

<tr height="30" class="clsQ">
	<td> 자바스트립트 어렵나요? </td>
</tr>
<tr height="30" class="clsA">
	<td> 그럼 쉽겟냐? </td>
</tr>

<tr height="30" class="clsQ">
	<td> 개발자 되기 쉽나요? </td>
</tr>
<tr height="30" class="clsA">
	<td> 너한텐 어렵다 </td>
</tr>
</table>


<div id="subject">
	<div>자바</div>
	<div style="display:none;">스프링</div>
	<div>서블릿</div>
	<div style="display:none;">오라클</div>
	<div>안드로이드</div>
	<div>node.js</div>
	<div style="display:none;">HTML</div>
</div>
<p>
	<button type="button" id="btn">확인</button>
</p>
</body>
</html>