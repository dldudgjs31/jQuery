<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="res/css/jquery.bxslider.min.css">

<style type="text/css">
.slider img {
	width: 500px; height: 270px;
}
</style>

<script type="text/javascript" src="res/js/jquery.min.js"></script>
<script type="text/javascript" src="res/js/jquery.bxslider.min.js"></script>

<script type="text/javascript">
$(function(){
	$('.slider').bxSlider({
		auto: true,
		autoControls: true,
		stopAutoOnClick: true,
		pager: true,
		slideWidth: 600
	});
});
</script>

</head>
<body>
<h3> 이미지 슬라이더 : https://bxslider.com </h3>
<hr>

<div style="width: 500px; margin: 20px auto;">
	<ul class="slider" style="margin: 0;">
		<li><a href="#"><img src="img/img1.png"></a></li>
		<li><a href="#"><img src="img/img2.png"></a></li>
		<li><a href="#"><img src="img/img3.png"></a></li>
		<li><a href="#"><img src="img/img4.png"></a></li>
		<li><a href="#"><img src="img/img5.png"></a></li>
	</ul>
</div>

</body>
</html>