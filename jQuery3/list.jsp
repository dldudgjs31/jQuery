<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin: 0px; padding: 0px;
}
body {
    font-size: 14px;
	font-family: "맑은 고딕", 나눔고딕, 돋움, sans-serif;
    box-sizing: border-box;	
}
a{
	color: #000000;
	text-decoration: none;
	cursor: pointer;
}
a:active, a:hover {
	text-decoration: underline;
	color: tomato;
}
.btn {
    color:#333333;
    font-weight:500;
    border:1px solid #cccccc;
    background-color:#fff;
    text-align:center;
    cursor:pointer;
    padding:3px 10px 5px;
    border-radius:4px;
}
.btn:active, .btn:focus, .btn:hover {
	 background-color:#e6e6e6;
	 border-color: #adadad;
	 color: #333333;
}
.boxTF {
    border:1px solid #999999;
    padding:4px 5px 5px;
    border-radius:4px;
    background-color:#ffffff;
}
.selectField {
    border:1px solid #999999;
    padding:3px 5px 3px;
    border-radius:4px;
    font-size: 12px;
}
.board {
	margin:30px auto 0px;
	width:700px;
	text-align:left;
}
.board-title {
	width:100%;
	height:45px;
	line-height:45px;
	text-align:left;
	font-weight: bold;
	font-size:15px;
}
.board-paging {
	margin-top: 10px;
	clear:both;
	height:35px;
	line-height:35px;
	text-align:center;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function searchList() {
	var f=document.searchForm;
	
}

$(function(){ //window.load 개념으로 위로 불러오려면 써야함
	
	$("form input[name=chkAll]").click(function(){
		if($("form input[name=chkAll]").is(":checked")){
			$("form input[name=nums]").prop("checked", true);
		}else{
			$("form input[name=nums]").prop("checked", false);
			
		}
	});
	
	$("#btnDeleteList").click(function(){
		var count = $("form input[name=nums]:checked").length;
		if(count==0){
			alert("삭제할 게시글을 선택해주세요.");
		}else{
			confirm("삭제하시겟습니까?");
		}
	});
});
</script>

</head>
<body>

<div class="board">

	<div class="board-title">
	    <h3><span>|</span> 게시판</h3>
	</div>
		
	<table style="width: 100%; margin-top: 20px; border-spacing: 0;">
	   <tr height="35">
		  <td align="left" width="50%">
			   <button type="button" id="btnDeleteList" class="btn">삭제</button>
		  </td>
		  <td align="right" width="50%">
			 <select name="rows" id="rows" class="selectField">
				   <option value="5">5개씩 출력</option>
				   <option value="10" selected="selected">10개씩 출력</option>
				   <option value="20">20개씩 출력</option>
				   <option value="30">30개씩 출력</option>
				   <option value="50">50개씩 출력</option>
			 </select>
		  </td>
	   </tr>
	</table>

	<form name="listForm" method="post">
	<table style="width: 100%; border-spacing: 0; border-collapse: collapse;">
	  <tr align="center" bgcolor="#507CD1" height="30"> 
		  <td width="40">
			  <input type="checkbox" name="chkAll" id="chkAll" style="margin-top: 3px;">
		  </td>
		  <td width="60" style="color: #ffffff;">번호</td>
		  <td width="360" style="color: #ffffff;">제목</td>
		  <td width="100" style="color: #ffffff;">작성자</td>
		  <td width="80" style="color: #ffffff;">작성일</td>
		  <td width="60" style="color: #ffffff;">조회수</td>
	  </tr>
	 
	  <tr align="center" bgcolor="#ffffff" height="30" style="border-bottom: 1px solid #e4e4e4;"> 
		  <td align="center"><input type="checkbox" name="nums" value="2" style="margin-top: 3px;"></td>
		  <td align="center">2</td>
		  <td align="left" style="padding-left: 10px;">
			  <a href="#">테스트 제목...</a>
		  </td>
		  <td align="center">스프링</td>
		  <td align="center">2010-10-10</td>
		  <td align="center">2</td>
	  </tr>

	  <tr align="center" bgcolor="#ffffff" height="30" style="border-bottom: 1px solid #e4e4e4;"> 
		  <td align="center"><input type="checkbox" name="nums" value="1" style="margin-top: 3px;" ></td>
		  <td align="center">1</td>
		  <td align="left" style="padding-left: 10px;">
			  <a href="#">테스트 제목...</a>
		  </td>
		  <td align="center">자바다</td>
		  <td align="center">2010-10-10</td>
		  <td align="center">2</td>
	  </tr>
	 
	</table>
	 </form>
	 
	 <div class="board-paging">
		 <a href="#">1</a>
		 <a href="#">2</a>
     </div>

	<table style="width: 100%; margin-top: 5px; border-spacing: 0;">
	   <tr height="35">
		  <td align="left" width="50%">
			  <form name="searchForm" action="" method="post">
				  <select name="searchKey" class="selectField">
					  <option value="subject">제목</option>
					  <option value="name">작성자</option>
					  <option value="content">내용</option>
					  <option value="created">등록일</option>
				</select>
				<input type="text" name="searchValue" class="boxTF">
				<input type="button" value=" 검 색 " class="btn" onclick="searchList()">
			</form>
		  </td>
		  <td align="right">
			  <input type="button" value=" 글올리기 " class="btn">
		  </td>
	   </tr>
	</table>

</div>


</body>
</html>