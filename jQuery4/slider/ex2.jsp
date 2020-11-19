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
		auto: true,  // 자동 애니메이션 시작
		speed: 500, // 애니메이션 속도
		pause: 5000,  // 애니메이션 유지시간(단위:ms) 
		mode: 'horizontal', // 기본값. 슬라이드 모드 : 'fade', 'horizontal', 'vertical'
		autoControls: true,  // 시작 및 중지 버튼
		pager: true, // 동그라미(불릿) 버튼 노출 여부
		captions: true,  // 이미지 위에 텍스트 표시
		touchEnabled: false // <a href="주소"> 에서 설정한 주소로 이동 가능하도록
	});
});
</script>

</head>
<body>
<h3> 이미지 슬라이더</h3>
<hr>

<div style="width: 500px; margin: 20px auto;">
	<ul class="slider" style="margin: 0;">
		<li><a href="#"><img src="img/img1.png" title="그림1"></a></li>
		<li><a href="#"><img src="img/img2.png" title="그림2"></a></li>
		<li><a href="#"><img src="img/img3.png" title="그림3"></a></li>
		<li><a href="#"><img src="img/img4.png" title="그림4"></a></li>
		<li><a href="#"><img src="img/img5.png" title="그림5"></a></li>
	</ul>
</div>

</body>
</html>