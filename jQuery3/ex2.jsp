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
.box{
   width: 200px;
   height: 200px;
   border: 3px solid #999;
   margin: 30px auto;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    
<script type="text/javascript">
$(function(){ 
	$(this)
	//end() : 현재 연속적인 계산 명령을 종료하고 선택 집합의 이전 요소를 찾아 반환
		.find("input").css("border","1px solid #333").end() // 해당 find는 끝
		.find("select").css("border","1px solid #333").end()
		.find(":button").css("border","1px solid #333").end();
	
   $("form input").focus(function(){ //포커스를 받을 때
      $(this).css("border","1px soild #00f");
   });
   $("form input").blur(function(){ //포커스를 안 받을 때
      $(this).css("border","1px soild #777");
   });
     $("form input[name=age]").keypress(function(e){
        //13 : enter 8: backspace 47~58: 숫자 
        if((e.kyeCode!=8 || e.keyCode!=13)&&(e.keyCode<47|| e.keyCode>58)){
           return false; //jquery에서 이벤트 취소
        }
     });
     
     $("form select[name=selectEmail1]").change(function(){
        var s=$(this).val();
        if(s===""){//아무것도 선택안했을 때
           $("form input[name=email2]").val("");
         $("form input[name=email2]").prop("readonly",true); //attr도 가능하지만 버전낮으면 안먹을 수 있기 때문에 prop으로 주고 true 혹은 false 주기
        }else if(s==="direct"){ //직접입력시
           $("form input[name=email2]").val("");
         $("form input[name=email2]").prop("readonly",false); //attr도 가능하지만 버전낮으면 안먹을 수 있기 때문에 prop으로 주고 true 혹은 false 주기   
        } else{ //선택하면 s값가져오기
           $("form input[name=email2]").val(s);
         $("form input[name=email2]").prop("readonly",true); //attr도 가능하지만 버전낮으면 안먹을 수 있기 때문에 prop으로 주고 true 혹은 false 주기
        }
        $("form input[name=email1]").focus();
     });
     
     $("form input[name=chk]").click(function(){
        var c=$(this).is(":checked");
        if(c){
        	$("#btnOk").prop("disabled", false);
        }else{
        	$("#btnOk").prop("disabled", true);
        	
        }
        	
     });
  });

</script>
</head>
<body>
<form>
   <p> 이름: <input type="text" name="name" value="이름을 입력하세요"> </p>
   <p> 나이: <input type="text" name="age"> </p>
   <p> 이메일: 
      <input type="text" name="email1">@ ><input type="text" name="email2" readonly="readonly">
      <select>
         <option>::선택::</option>
         <option value="gmail.com">지메일</option>
         <option value="naver.com">네이버</option>
         <option value="direct">직접입력</option>
       </select>
   </p>
   <p><input type="checkbox" name="chk">약관동의하냐?</p>
   <p><input type="button" id="btnOk" disabled="disabled"></p>
</form>
</body>
</html>