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
	$("form input[name=test2]").val("안녕"); //value값 설정
	$("form input[name=chk]").prop("checked",true); //properties 값 설정
	
	$("form input[name=gender]").val(["F"]); // 박스 선택
	//$("form input[name=gender]:eq(1)").prop("checked",true); 다른방법
	
	$("form input[name=chk1]").val(["b","d"]);
	
	
	
	$("form select[name=sel1]").val("spring"); // 셀렉트 선택 방법1
	$("form select[name=sel2] option:eq(2)").prop("selected",true); // 셀렉트 선택 방법2
});

$(function(){
	$("#btn").click(function(){
		var s="";
		s=$("input[name=test1]").val()+"<br>";
		s+=$("input[name=test2]").val()+"<br>";
		if($("input[name=chk]").is(":checked")){
			s+=$("input[name=chk]").val()+"<br>";
		}
		//동일한 이름이 두개 이상이므로
		$("input[name=gender]").each(function(){
			if($(this).prop("checked")){
				s+=$(this).val()+"<br>";
			}
		});
		
		//each는 배열같은 개념이고 안에 배열만큼 실행하게됨(반복문 개념)// index값을 받아올수도 잇다.
		$("input[name=chk1]").each(function(){ 
			if($(this).prop("checked")){
				s+=$(this).val()+"<br>";
			}
		});
	
		s+=$("select[name=sel1]").val()+"<br>";
		
		
	$("#resultLayout").html(s);
	});
});
</script>
</head>
<body>
<form>
	<p><input type="text" name="test1"> </p>
	<p><input type="text" name="test2"> </p>
	<p>
		<input type="checkbox" value="1" name="chk">
	</p>
	
	<p>
		<input type="radio" name="gender" value="M">남자
		<input type="radio" name="gender" value="F">여자
	</p>
	<p>
		<input type="checkbox" name="chk1" value="a">
		<input type="checkbox" name="chk1" value="b">
		<input type="checkbox" name="chk1" value="c">
		<input type="checkbox" name="chk1" value="d">
	
	</p>
	<p>
		<select name="sel1">
			<option value="java">자바</option>
			<option value="spring">스프링</option>
			<option value="javascript">자바스트립트</option>
			<option value="html">html</option>
		</select>
	</p>
	
	<p>
		<select name="sel2">
			<option value="1">헬스</option>
			<option value="2">독서</option>
			<option value="3">게임</option>
			<option value="4">산책</option>
		</select>
	</p>
	<p>
		<button type="button" id="btn">확인</button>
	</p>
</form>

<hr>
<div id="resultLayout"></div>
</body>
</html>