<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn1").click(function(){
		var input=$("input[name=inputString]").val();
		if(! input){
			return false;
		}
		//가장 앞에 추가
		//To가 있고 없고 차이 : 순서만 차이가 있다.
		$("#box").prepend("<p>"+input+"</p>");
		//$("<p>"+input+"</p>").prependTo("#box");
		
		$("input[name=inputString]").val("");
		$("input[name=inputString]").focus();
		
	});
});
$(function(){
	$("#btn2").click(function(){
		var input=$("input[name=inputString]").val();
		if(! input){
			return false;
		}
		
		$("#box").append("<p>"+input+"</p>");
		//$("<p>"+input+"</p>").appendTo("#box");
		
		$("input[name=inputString]").val("");
		$("input[name=inputString]").focus();
		
	});
});

$(function() {
	$("#btn3").click(function(){
		var s =$("#inputs").val();
		if(!s) return false;
	/*	
		var html="<tr height='30' align='center'>";
		html+="<td width='100'>과목</td>";
		html+="<td width='200'>"+s+"</td>";
		html+="</tr>";
		$("#tb").append(html);
	*/
	
		var $tr, $td;
		$tr=$("<tr>",{height:"35"});
		$td=$("<td>",{width:"100",style:"text-align:center",html:"과목"});
		$tr.append($td);
		$td=$("<td>",{width:"200",style:"text-align:center",html:s});
		$tr.append($td);
		$("#td").append($tr);
		
		
		$("#inputs").val("");
		$("#inputs").focus();
	});
});
</script>

<body>
<div id="box">
	<p>자바</p>
</div>


<hr>
<div>
	<input type="text" name="inputString">
	<button type="button" id="btn1">처음에 추가</button>
	<button type="button" id="btn2">마지막에 추가</button>
</div>
<table style="width: 300px;"border="1">
<tbody id="td"></tbody>
</table>
<div>
	<input type="text" id="inputs">
	<button type="button" id="btn3">추가</button>
</div>
</body>
</html>