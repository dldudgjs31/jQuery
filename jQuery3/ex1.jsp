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
	$(window).scroll(function(){
		var left=$(document).scrollLeft();
		var top=$(document).scrollTop();
		
		console.log("left:"+left+"top:"+top);
			
	});
});

</script>
</head>
<body>
<h3>스크롤바 위치 구하기</h3>
<div id="layout" style="width: 1024px; height:1024px; border: 1px solid #ccc;">

</div>
</body>
</html>