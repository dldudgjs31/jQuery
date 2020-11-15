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
$(function(){
	//제이쿼리를 이용해서 css 접근하는 방법
	$("*").css("font-size","25px"); // 모두 선택시에
	$("span").css("color","blue");//태그 선택자
	$("#div1").css("color","red");//id 선택자
	$(".cls1").css("background","#ff0");//클래스 선택자(cls1 배경 변경)
	$("span, label").css("font-family","궁서");//span, label 글꼴 변경
	$("form input").css("background","#e4e4e4");//form 태그 자손중 input
	$("form input[type=text]").css("border","none");//type=text만
	$("form input[type=text]").css("border-bottom","2px solid black");//type=text만
	
	$("form input[name*=x]").css("border-right","3px solid black");//name에 * 포함
	$("form input[name$=c]").css("border-left","3px solid black");//name 마지막 c
	$("form input[name^=b]").css("border-top","3px solid black");//name 시작 b
	$("form :not(input[type=text],p)").css("background","navy");//input의 type=text아닌 것에 스타일 //p태그도 제외
	
	
});
</script>
</head>
<body>
<div id="div1">테스트1</div>
<div id="div2">테스트2</div>
<div id="div3" class="cls1">테스트3</div>
<span>테스트4</span><br>
<span>테스트5</span><br>
<div id="div4" class="cls1">테스트 6</div>
<span class="cls2">테스트7</span><br>
<label class="cls2">테스트8</label><br>
<hr>

<p> <input type="text" name="abc1"> </p>

<form>
	<p> <input type="text" name="abc"> </p>
	<p> <input type="text" name="abx"> </p>
	<p> <input type="text" name="bba"> </p>
	<p> <input type="text" name="bbb"> </p>
	<p> <input type="text" name="axc"> </p>
	<p> <input type="button" value="등록하기"> </p>
	<p> <input type="reset" value="다시입력"> </p>
</form>
</body>
</html>