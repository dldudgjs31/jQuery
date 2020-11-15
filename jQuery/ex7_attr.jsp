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
</script>
</head>
<body>
<div>
	<img id="img1" alt="컴퓨터" src="main1.jpg" width="100" height="100">
</div>
<script type="text/javascript">
//attribute
$("#img1").click(function(){
	var s = $(this).attr("alt");
	if(s==="컴퓨터"){
		$(this).attr("alt","개발자"); // 속성값을 변경
		$(this).attr("src","main2.jpg"); // 속성값을 변경
	}else{
		$(this).attr("alt","컴퓨터");
		$(this).attr("src","main1.jpg");
	}
});
</script>
</body>
</html>