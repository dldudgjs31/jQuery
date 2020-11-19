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
	$("body").on("click",".table1 .top",function(){
		var $tr = $(this).closest("tr");
		$tr.closest("table").find("tr:first").before($tr);
	});
	
	$("body").on("click",".table1 .up",function(e){
		var $tr = $(this).closest("tr");
		$tr.prev().before($tr);
	});
	
	$("body").on("click",".table1 .down",function(e){
		var $tr = $(this).closest("tr");
		$tr.next().after($tr);
		
	});
	
	$("body").on("click",".table1 .bottom",function(e){
		var $tr = $(this).closest("tr");
		$tr.closest("table").find("tr:last").after($tr);
		
	});
});
</script>
<body>
<div style="width: 600px; margin: 30px auto;">
	<table class="table1" style="width: 100%; border-spacing: 0;" border="1">
		<tr height="35" align="center">
			<td width="350">자바</td>
			<td>
				<button type="button" class="top">자바</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바1</td>
			<td>
				<button type="button" class="top">자바1</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바2</td>
			<td>
				<button type="button" class="top">자바2</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바3</td>
			<td>
				<button type="button" class="top">자바3</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바4</td>
			<td>
				<button type="button" class="top">자바4</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바5</td>
			<td>
				<button type="button" class="top">자바5</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
		<tr height="35" align="center">
			<td width="350">자바6</td>
			<td>
				<button type="button" class="top">자바6</button>
				<button type="button" class="up">위</button>
				<button type="button" class="down">아래</button>
				<button type="button" class="bottom">맨아래</button>
			</td>
		</tr>
	</table>

</div>

</body>
</html>