<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/core"%>

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
	$("input").not($(":button")).keypress(function(e){
		if(e.keyCode==13){
			var fields = $(this).parents("form, body").find("button, input, textarea, select");
			var index = fields.index(this);//이벤트를 발생시킨 객체의 인덱스
			
			if( index>-1 && (index+1) < fields.length ){
				fields.eq(index+1).focus();	
			}
			//jquery에서 false를 리턴하면 이벤트 취소
			return false; 
				
		}
	});
	
});
</script>
</head>
<body>
<form>
	<p> <input type="text"> </p>
	<p> <input type="text"> </p>
	<p> <input type="text"> </p>
	<p> <input type="text"> </p>
	<p>
		<input type="button" value="확인" id="btn">
	</p>
</form>
</body>
</html>