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
	line-height: 200px;
	margin: 30px auto;
	border: 3px solid #ccc;
	font-weight: 700;
	text-align: center;
}
.yb{
	background: yellow;
}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".box")
	.bind("mouseover", function(){ $(this).addClass("yb"); })
	.bind("mouseout", function(){ $(this).removeClass("yb"); });
});
</script>
</head>
<body>
<div class="box">자바스크립트</div>

</body>
</html>