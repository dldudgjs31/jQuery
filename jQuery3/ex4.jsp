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
	$("#btn1").click(function(){
		//버튼으로 전송하는 경우
		//var q ="name="+$("input[name=name]").val();
		//q+="&age="+$("input[name=age]").val();
		
		//직렬화: 키1 = 값1&키1 = 값2
		//한글은 자동으로 인코딩되며 ajax등에서 매우 유용하다..form 태그는 필수
		var query=$("form").serialize();
		alert(query);
	});
});
$(function(){
	$("form").submit(function(){
		//form에서 서브밋 이벤트가 발생이 되면
		var query=$("form").serialize();
		alert(query);
		return false;//서버로 전송하지 않음
	});
	
});
</script>
</head>
<body>
<form>
	<p> 이름 : <input type="text" name="name"> </p>
	<p> 나이 : <input type="text" name="age"> </p>
	<p> 좋아하는과목 : 
		<input type="checkbox" name="subject" value="java">자바 
		<input type="checkbox" name="subject" value="oracle">오라클 
		<input type="checkbox" name="subject" value="web">웹
		<input type="checkbox" name="subject" value="servlet">서블릿
	</p>
	<p>
		<button type="button" id="btn1">버튼으로 전송</button>
		<!-- 액션을 주지 않으면 자기자신에게 간다. -->
		<button type="submit" id="btn2">서브밋으로 전송</button>
	</p>
</form>
</body>
</html>