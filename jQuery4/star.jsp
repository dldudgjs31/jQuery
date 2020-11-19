<%@ page  contentType="text/html; charset=UTF-8"%>
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
   margin: 0; padding: 0;
}

body {
   font-family: "맑은 고딕", sans-serif;
   font-size: 14px;
}
.star {
   font-size: 0; letter-spacing: -4px;
}
.star a{
   font-size: 22px;
   letter-spacing: 0;
   display: inline-block;
   margin-left: 10px;
   color: #ccc;
   text-decoration: none;
}
.star a:first-chile{
   margin-left: 0;
}
.star a.on{
   color: #f2cb61
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   $(".star a").click(function(){
      var b = $(this).hasClass("on");      // hasClass는 true아님 fasle임 
      $(this).parent().children("a").removeClass("on");
      $(this).addClass("on").prevAll("a").addClass("on");
      if(b){
         $(this).removeClass("on");
      }
      var s = $(".star .on").length;
      $("#score").val(s);
   });
});
</script>
</head>
<body>

<div style="margin: 30px auto; width: 500px;">
   <h3>이미지 없는 간단한 별점</h3>
      <div>
         <p class="star">
            <a href="#">★</a>
            <a href="#">★</a>
            <a href="#">★</a>
            <a href="#">★</a>
            <a href="#">★</a>
         </p>
      </div>
      <div style="margin: 10px">
         <input type="text" id="score" value="0" readonly="readonly">
      </div>
</div>


</body>
</html>