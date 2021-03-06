<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이영헌만세</title>
<style type="text/css">
*{
    margin:0; padding: 0;
}
body {
    font-size:14px;
   font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
}
a{
    color:#000000;
    text-decoration:none;
    cursor:pointer;
}
a:active, a:hover {
    text-decoration: underline;
    color:tomato;
}
.title {
    font-weight:bold;
    font-size:16px;
    font-family:나눔고딕, "맑은 고딕", 돋움, sans-serif;
}
.btn {
    color:#333333;
    font-weight:500;
    font-family:"맑은 고딕", 나눔고딕, 돋움, sans-serif;
    border:1px solid #cccccc;
    background-color:#ffffff;
    text-align:center;
    cursor:pointer;
    padding:3px 10px 5px;
    border-radius:4px;
}
.btn:active, .btn:focus, .btn:hover {
    background-color:#e6e6e6;
    border-color:#adadad;
    color:#333333;
}
.boxTF {
    border:1px solid #999999;
    padding:3px 5px 5px;
    border-radius:4px;
    background-color:#ffffff;
    font-family:"맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
.selectField {
    border:1px solid #999999;
    padding:3px 5px 3px;
    border-radius:4px;
    font-family:"맑은 고딕", 나눔고딕, 돋움, sans-serif;
}

.title {
   width:100%;
   height:45px;
   line-height:45px;
   text-align:left;
   font-weight: bold;
   font-size:15px;
}

tr.over {
   background: #f5fffa;
}

.score-table input {
   border:none;
   padding:3px 5px 5px;
   background-color:#ffffff;
   width:100%;
   box-sizing:border-box;
   font-family:"맑은 고딕", 나눔고딕, 돋움, sans-serif;
}
.score-table input[readonly] {
    pointer-events: none;
    border: none;
    text-align: center;
}

.score-table button {
    color:#333333;
    font-weight:500;
    font-family:"맑은 고딕", 나눔고딕, 돋움, sans-serif;
    border:none;
    width:100%;
    text-align:center;
    cursor:pointer;
    padding:4px 10px 4px;
    background-color: #ffffff;
}
.score-table button:hover {
    font-weight:500;
    color:#4374d9;
}

.spanUpdate, .spanUpdateOk, .spanDelete, .spanUpdateCancel {
   cursor: pointer;
}

.spanUpdate:hover, .spanUpdateOk:hover, .spanDelete:hover, .spanUpdateCancel:hover {
   font-weight:500;
   color: #4374d9;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function isValidNumber(data){
   var format=/^(\d+)$/;
   return format.test(data);
}

function isValidDateFormat(data){
    var regexp = /[12][0-9]{3}[\.|\-|\/]?[0-9]{2}[\.|\-|\/]?[0-9]{2}/;
    if(! regexp.test(data))
        return false;

    regexp=/(\.)|(\-)|(\/)/g;
    data=data.replace(regexp, "");
    
   var y=parseInt(data.substr(0, 4));
    var m=parseInt(data.substr(4, 2));
    if(m<1||m>12) 
       return false;
    var d=parseInt(data.substr(6));
    var lastDay = (new Date(y, m, 0)).getDate();
    if(d<1||d>lastDay)
       return false;
      
   return true;
}

$(function(){
	$("body").on("keypress",".score-table input:text",function(e){ //버튼키 입력시
	      var fileds = $(this).closest("tr").find("input:text"); //input text를 찾기
	      var index = fileds.index(this); // 순서 찾기
	      
	      if(e.keyCode===13){
	    	  if(index>-1 && index<5){
	    		  fileds.eq(index+1).focus();
	    	  }else{
	    		  if($(this).closest("tr").find("#btnAdd").length>0){
	    			  $("#btnAdd").trigger("click");
	    		  }
	    	  }
	    	  return false;
	      }
	});
	
   $("body").on("keyup",".score-table input:text",function(e){
      var fileds = $(this).closest("tr").find("input:text");
      var index = fileds.index(this);
      
      if(index>=3 && index<=5){
         var k = fileds.eq(3).val().trim();
         var e = fileds.eq(4).val().trim();
         var m = fileds.eq(5).val().trim();         

         var kor = isValidNumber(k)? parseInt(k) : 0;
         var eng = isValidNumber(e)? parseInt(e) : 0;
         var mat = isValidNumber(m)? parseInt(m) : 0;
         
         var tot = kor+eng+mat;
         var ave = Math.floor(tot/3);
         
         if(!k && !e && !m){
            tot = "";
            ave = "";
         }
         fileds.eq(6).val(tot);
         fileds.eq(7).val(ave);
      }
   });
});

$(function(){
   $("#btnAdd").click(function(){
      
      //if(! check()){
      //   return false;
      //}
      
      var hak = $("#hak").val().trim();
      var name = $("#name").val().trim();
      var birth = $("#birth").val();
      var kor = parseInt($("#kor").val());
      var eng = parseInt($("#eng").val());
      var mat = parseInt($("#mat").val());
      
      var tot = kor+eng+mat;
      var ave = Math.floor(tot/3);
      
      var str = "<tr height='26' class='row' bgcolor='#fff' align='center'>";
      $(str).hover(function(){
         $(this).addClass("over");
      }, function(){
         $(this).removeClass("over");
      })
      .append("<td>"+hak+"</td>")
      .append("<td>"+name+"</td>")
      .append("<td>"+birth+"</td>")
      .append("<td>"+kor+"</td>")
      .append("<td>"+eng+"</td>")
      .append("<td>"+mat+"</td>")
      .append("<td>"+tot+"</td>")
      .append("<td>"+ave+"</td>")
      .append("<td><span class='spanUpdate'>수정</span> | <span class='spanDelete'>삭제</span></td>")
      .appendTo(".score-list");
      
      $(".score-input input:text").each(function(){
         $(this).val("");
      });
      $("#hak").focus();
   });
   function check(){
      
      if(! $("#hak").val().trim()){
         $("#hak").focus();
         return false;
      }
      if(! $("#name").val().trim()){
         $("#name").focus();
         return false;
      }
      if(! isValidDateFormat($("#birth").val())){
         $("#birth").focus();
         return false;
      }
      if(! isValidNumber($("#kor").val())){
         $("#kor").focus();
         return false;
      }
      if(! isValidNumber($("#eng").val())){
         $("#eng").focus();
         return false;
      }
      if(! isValidNumber($("#mat").val())){
         $("#mat").focus();
         return false;
      }
      
      return true;
   }
});

$(function(){
   var arr=[];
   $("body").on("click",".spanUpdate",function(){
      var $tds = $(this).closest("tr").children("td");
      
      var s;
      $($tds).each(function(idx){
         if(idx != $tds.length-1){   //마지막 td가 아니면 
            arr[idx] = $(this).text();
            s = "";
            if(idx==6 || idx==7){
               s=" readonly='readonly' ";
            }
            
            $(this).empty();
            $(this).append("<input type='text' value='"+arr[idx]+"' "+s+">");
            
         } else {   //마지막 td이면
            $(this).empty();
            $(this).append("<span class='spanUpdateOk'>완료</span> | <span class='spanUpdateCancel'>취소</span>");
         }
      });
      $($tds[0]).find("input").focus();
   });   
   $("body").on("click",".spanUpdateOk",function(){
      var $tds = $(this).closest("tr").children("td");
      
      $($tds).each(function(idx){
         var obj = $(this)
         if(idx!=$tds.length-1){
            $(this).find("input:text").each(function(){
               obj.empty();
               obj.text($(this).val());
            });
            
         } else{
            $(this).empty();
            $(this).append("<span class='spanUpdate'>수정</span> | <span class='spanDelete'>삭제</span>");
         }
   });
   });
      
   $("body").on("click",".spanUpdateCancel",function(){
      var $tds = $(this).closest("tr").children("td");
      
      $($tds).each(function(idx){
         if(idx!=$tds.length-1){
            $(this).empty();
            $(this).text(arr[idx]);
         } else{
            $(this).empty();
            $(this).append("<span class='spanUpdate'>수정</span> | <span class='spanDelete'>삭제</span>");
         }
      });
   });
   
});

$(function(){
	$("body").on("click",".spanDelete",function(){
		if(! confirm("데이터를 삭제하시겠습니까?")){
			return false;
		}
		var $tr = $(this).closest("tr");
		$($tr).fadeOut("show", function(){
			$($tr).remove();
		});
	});
});

</script>

</head>
<body>

<div style="width: 800px; margin: 30px auto;">

   <div class="title">
      <h3><span>|</span> 성적 처리</h3>
   </div>

   <table class="score-table" style="width: 100%; margin-top: 20px; border-spacing: 1px; background: #cccccc;">
   <thead>
      <tr height="35" bgcolor="#E4E6E4" align="center">
         <td width="80">학번</td>
         <td width="100">이름</td>
         <td width="100">생년월일</td>
         <td width="80">국어</td>
         <td width="80">영어</td>
         <td width="80">수학</td>
         <td width="80">총점</td>
         <td width="80">평균</td>
         <td>변경</td>
      </tr>
   </thead>
   
   <tbody class="score-input">
      <tr bgcolor="#ffffff" align="center">
         <td><input type="text" id="hak"></td>
         <td><input type="text" id="name"></td>
         <td><input type="text" id="birth"></td>
         <td><input type="text" id="kor"></td>
         <td><input type="text" id="eng"></td>
         <td><input type="text" id="mat"></td>
         <td><input type="text" id="tot" readonly="readonly" ></td>
         <td><input type="text" id="ave" readonly="readonly" ></td>
         <td>
            <button type="button" id="btnAdd">등록하기</button>
         </td>
      </tr>
   </tbody>
   
   <tfoot class="score-list">
   </tfoot>
   
   </table>
</div>

</body>
</html>