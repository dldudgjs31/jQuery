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
label{
	display: block;	
}
textarea:focus, input:focus {
	outline: none;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("form input + span").hide();
	$("form input[type=text],input[type=password]").css("border","3px solid #aaa"); // input에서 type text/passoword 속성 주기
	$("form input").not($(":button")).not($(":reset")).focus(function(){ // not을 통해 button.reset 속성에는 적용x
		$(this).css("border","3px solid tomato"); // 나 자신만을 선택할때 this(이벤트를 실행한)
		$(this).next("span").show(100);//보이게 하는 설정 show // next는 인접형제 개념
	});
	$("form input").not($(":button")).not($(":reset")).blur(function(){ // not을 통해 button.reset 속성에는 적용x
		$(this).css("border","3px solid #aaa"); // 나 자신만을 선택할때 this(이벤트를 실행한)
		$(this).next("span").hide(100); // 애니메이션 효과(숫자 기입) // hide : 사라지게해줌
	});
});
</script>
</head>
<body>
<form>
<label>
	아이디 : <input type="text" name="id">
	<span> 아이디는 5자 이상입니다~.</span>
	<span>*</span>
</label>

<label>
	패스워드 : <input type="password" name="pwd">
	<span> 패스워드는는 5자 이상입니다~.</span>
	<span>*</span>
</label>

<label>
	이름: <input type="text" name="name">
	<span> 이름은 필수 사항</span>
</label>

<label>
	나이: <input type="text" name="age">
	<span> 나이는 필수이며 숫자만 가능</span>
</label>

<label>
	생년월일: <input type="text" name="birth">
	<span> 2020-11-13 형식으로 입력하시오</span>
</label>
<p>
	<input type="button" value="등록하기">
	<input type="reset" value="다시입력">
</p>
</form>
</body>
</html>