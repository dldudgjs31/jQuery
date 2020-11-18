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
* {
	margin: 0px; padding: 0px;
}

body {
	font-size: 14px;
	font-family: 맑은 고딕, 돋움;
}
.btn {
    color:#333333;
    font-weight:500;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
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
    padding:3px 5px 5px;
    border-radius:4px;
    background-color:#ffffff;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type='text/javascript'>

</script>
</head>
<body>

<div style="width:800px; margin: 10px auto;">
   <form name="searchForm">
       <button type="button" class="btn" onclick="setInputDate('day', 0);">오늘</button>
       <button type="button" class="btn" onclick="setInputDate('week', 1);">1주일</button>
       <button type="button" class="btn" onclick="setInputDate('month', 1);">1개월</button>
       <button type="button" class="btn" onclick="setInputDate('month', 3);">3개월</button>
       <button type="button" class="btn" onclick="setInputDate('month', 6);">6개월</button>
       <button type="button" class="btn" onclick="setInputDate('year', 1);">1년</button>
       
       <input type="text" name="startDate" id="startDate" class="boxTF">
       ~
       <input type="text" name="endDate" id="endDate" class="boxTF">
       
       <button type="button" class="btn" onclick="searchList();">검색</button>
       
   </form>
</div>

</body>
</html>