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
	$("#reply div").click(function(){
		var num=$(this).attr("data-num");
		alert(num);
	});
});
</script>
</head>
<body>
<div id="reply">
	<div data-num="1">테스트1</div>
	<div data-num="2">테스트2</div>
	<div data-num="3">테스트3</div>
	<div data-num="4">테스트4</div>
</div>
</body>
</html>