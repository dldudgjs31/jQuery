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
	$("tr:even").css("background","#efefef"); // tr을 홀수번째만 속성 변경
	$("tr:first").css("background","#aaa"); // 1번째 tr 변겅
	$("tr:last").css("background","silver");//마지막 tr 변경
	
	$("tr td:contains('이영헌')").css("color","blue"); //이름에 문자를 포함한 것만 속성 변경
	$("tr:eq(5)").css("color","skyblue"); //5번째 줄 색변경
	$("tr td:empty").css("background","red");// 값이 없는 칸 스타일 변경
	
	$("tr td:nth-child(2n+5)").css("background-color","green");// nth-child 속성 사용
});
</script>
</head>
<body>
<table style="width: 500px;" border="1">
<tr>
	<td>학번</td>
	<td>이름</td>
	<td>국어</td>
	<td>영어</td>
	<td>수학</td>
</tr>
<tr>
	<td>1231</td>
	<td>이영헌</td>
	<td>100</td>
	<td>90</td>
	<td>90</td>
</tr>
<tr>
	<td>1232</td>
	<td>이영헌1</td>
	<td>100</td>
	<td>90</td>
	<td>90</td>
</tr>
<tr>
	<td>1233</td>
	<td>이영헌2</td>
	<td>100</td>
	<td>90</td>
	<td>90</td>
</tr>
<tr>
	<td>1234</td>
	<td>이영헌3</td>
	<td>11</td>
	<td></td>
	<td>90</td>
</tr>
<tr>
	<td>1235</td>
	<td>이영헌</td>
	<td>100</td>
	<td>100</td>
	<td>90</td>
</tr>
<tr>
	<td>1236</td>
	<td>이영헌</td>
	<td>100</td>
	<td>90</td>
	<td>90</td>
</tr>
<tr>
	<td>1237</td>
	<td>이영헌</td>
	<td>100</td>
	<td>90</td>
	<td>100</td>
</tr>

</table>
</body>
</html>