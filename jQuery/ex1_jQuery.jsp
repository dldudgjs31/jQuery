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
.box{
	width: 200px;
	height: 200px;
	border: 3px solid #999;
	margin: 30px auto;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    
<script type="text/javascript">
/* onload를 2개 먹이면 `1개만 적용이된다. 
window.onload=function(){
	document.getElementById("boxLayout").style.background="blue";
}

window.onload=function(){ // 위에 배경색은 실행되지 않고 마지막 onload가 실행된다.
	alert("환영합니다.");
}
*/

$(function(){ //onload와 유사함
	$("#boxLayout").css("background","#f0f");
});


$(function(){
	alert("환영합니다.");
});//jquery는 $로 대체 가능

</script>
</head>
<body>
<div id="boxLayout" class="box">

</div>
</body>
</html>