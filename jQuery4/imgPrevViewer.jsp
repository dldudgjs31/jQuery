<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이영헌 만세</title>
<style type="text/css">

*{
	margin:0; 
	padding:0;
	font-size:14px;
	font-family:맑은 고딕;
}

.imagePreView {
	width: 300px;
	margin-top: 50px;
	
}

.imagePreView img{
	max-width: 100%;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".input-form input[name=selectFile]").change(function(e){
		//files : 읽어들인 파일의 정보 보유 (파일명)
		var f=e.target.files[0];
		
		//이미지 파일이 아니면 
		if(! f.type.match("image.*")){
			return false;
		}
		
		//FileReader : 비동기적으로 파일을 읽어올 수 있는 객체
		var reader = new FileReader();
		//onload : 파일이 성공적으로 다 읽어들이면 이벤트가 발생
		reader.onload = function(e1) {//파일 읽은 것을 알려줌
			$(".imageSelected").attr("src",e1.target.result);
		};
		reader.readAsDataURL(f);
		//파일정보 읽어 주소처럼 사용(img src 에서 사용 가능)
	});
	
});
</script>
</head>

<body>
<h3>하나의 이미지 미리보기</h3>
<div style="width: 840px; margin: 30px auto;">
	<form class="input-form">
		<div>
			<h3 style="margin-bottom: 10px;">이미지 미리보기 업로드</h3>
			<input type="file" name="selectFile">
		</div>
		<div>
			<div class="imagePreView">
				<img alt="" src="" class="imageSelected">
			</div>
		</div>
	</form>
</div>
</body>
</html>