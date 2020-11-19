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
	var files = []; //배열
	$(".input-form input[name=selectFile]").change(function(e){
		//files : 읽어들인 파일의 정보 보유 (파일명)
		var f=e.target.files;
		//slice() : 배열의 begin에서 end까지 얕은 복사
		var filesArr = Array.prototype.slice.call(f);
		
		filesArr.forEach(function(file){
			if(! file.type.match("image.*")){
				return;
			}
			files.push(file);
			var reader = new FileReader();
			reader.onload = function(e1){
				var out="<img src='"+e1.target.result+"'>";
				$(".imagePreView").append(out);
			}
			reader.readAsDataURL(file);
		});
});
});
</script>
</head>

<body>
<h3>다중 이미지 미리보기</h3>
<div style="width: 840px; margin: 30px auto;">
	<form class="input-form">
		<div>
			<h3 style="margin-bottom: 10px;">이미지 미리보기 업로드</h3>
			<input type="file" name="selectFile" multiple="multiple">
		</div>
		<div>
			<div class="imagePreView"></div>
		</div>
	</form>
</div>
</body>
</html>