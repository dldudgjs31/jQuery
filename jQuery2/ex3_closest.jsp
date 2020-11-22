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
	$("form input[name='selectFile']").change(function(){
		//if($(this).val()) return false;
		//나중에 추가된 객체는 이벤트가 등록되지 않는다.
/* 		var s ="<tr>";
		s+="<td>첨부</td>";
		s+="<td><input type='file' name='selectFile'></td>";
		s+="</tr>";
		$("#tb").append(s); */
		
		//closest: 가장 가까운 조상을 찾는다.
		var $tr=$(this).closest("tr").clone(true);// 이벤트까지 복제
		$tr.find("input").val("");
		$("#tb").append($tr);
		
	});	
});


</script>

<body>
<form method="post" enctype="multipart/form-data">
<table border="1" style="width: 500px;">
<tbody id="tb">
	<tr>
		<td width="100">제목</td>
		<td width="400"><input type="text" name="subject"></td>
	</tr>
	<tr>
		<td>첨부</td>
		<td>
			<input type="file" name="selectFile">
		</td>
	</tr>
</tbody>
<tfoot>
	<tr>
		<td colspan="2">
			<button type="button">등록</button>
			<button type="button">취소</button>
		</td>
	</tr>
</tfoot>
</table>
</form>
</body>
</html>