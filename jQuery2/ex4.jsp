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
#box{
   cursor: pointer;
}
.yb{
   background: yellow;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script> 
<script type="text/javascript">
$(function(){
   //#은 이벤트 등록
   $("#btn1").click(function(){
      //동적으로 이벤트등록(btn을 누를때마다 이벤트가 등록됨)
      $("#box").bind("click",function(){
         alert("확인");
      });
   });
   
   $("#box").bind("mouseover",function(){ $(this).addClass("yb"); })
      .bind("mouseout",function(){$(this).removeClass("yb"); });

/*
 *$("#btn1").click(function(){
   alert("환영.."); 
 }) ;
 
 */
   //btn1의 click이벤트가 한번만발생
   $("#btn1").one("click", function(){
      //alert("환영..");
      $("#box").bind("click",function(){
         alert("확인");
      });
   });
 
    $("#btn2").one("click",function(){
       //이벤트해제
       $("#box").unbind("click");
    });
});

</script>
</head>
<body>
<div id="box">
   클릭하세요
</div>
<div>
   <button id="btn1">이벤트 등록</button>   
   <button id="btn2">이벤트 취소</button>
   
</div>

</body>
</html>