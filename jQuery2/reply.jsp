<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>spring</title>
<style type="text/css">
* {
    margin:0; padding:0;
}

body {
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
    font-size: 14px;
}

a {
    cursor: pointer;
    color: #000000;
    text-decoration: none;
    /*line-height: 150%;*/
}
a:hover, a:active {
    color: #F28011;
    text-decoration: underline;
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
.boxTA {
    border:1px solid #999999;
    height:150px;
    padding:3px 5px;
    border-radius:4px;
    resize:none;
    background-color:#ffffff;
    font-family:"Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
}
</style>


<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
$(function(){
	//댓글등록
	
	$(".btnSendReply").click(function(){
		
		var num = "10";	
		var $table = $(this).closest("table");
		var content =$table.find("textarea").val().trim();
		if(!content){
			$td.find("textarea").focus();
			return false;
		}
		//서버로 넘길시 인코딩처리
		content=encodeURIComponent(content);
		
		alert("글번호:"+num+"내용:"+content);
	});
	
	
	$("body").on("click",".btnReplyAnswerLayout", function(){
		var $trReplyAnswer = $(this).closest("tr").next();
		var isVisible = $trReplyAnswer.is(":visible");
		
		var replyNum = $(this).attr("data-replyNum");
			
			if(isVisible){
				$trReplyAnswer.hide();
			}else{
				$trReplyAnswer.show();
			}
		
	});
	
	$("body").on("click",".btnSendReplyAnswer",function(){
		//답글 등록 버튼
		var replyNum = $(this).attr("data-replyNum");
		var $td = $(this).closest("td");
		var content =$td.find("textarea").val().trim();
		if(!content){
			$td.find("textarea").focus();
			return false;
		}
		//서버로 넘길시 인코딩처리
		content=encodeURIComponent(content);
		
		alert("댓글번호:"+replyNum+",내용:"+content);
	});
});

$(function(){
	$("body").on("click",".btnSendReplyLike", function(){
		var replyNum = $(this).attr("data-replyNum");
		var replyLike = $(this).attr("data-replyLike");
		
		var msg="게시물이 마음에 들지 않으십니까? ";
		if(replyLike==="1"){
			msg="게시물에 공감?";
		}
		if(! confirm(msg)){
			return;
		}
		
		var cnt = $(this).find("span").text();
		cnt = parseInt(cnt)+1;
		$(this).find("span").text(cnt);
		alert(cnt);
	});
});
</script>

</head>

<body>

 <div style="width: 700px; margin: 30px auto;">
     <table style='width: 100%; margin: 15px auto 0; border-spacing: 0;'>
          <tr height='30'> 
           <td align='left' >
           	<span style='font-weight: bold;' >댓글쓰기</span><span> - 타인을 비방하거나 개인정보를 유출하는 글의 게시를 삼가 주세요.</span>
           </td>
          </tr>
          <tr>
             <td style='padding:5px 5px 0px;'>
                  <textarea class='boxTA' style='width:99%; height: 70px;'></textarea>
              </td>
          </tr>
          <tr>
             <td align='right'>
                  <button type='button' class='btn btnSendReply' style='padding:10px 20px;'>댓글 등록</button>
              </td>
          </tr>
     </table>
          
     <div id="listReply">
		<table style='width: 100%; margin: 10px auto 30px; border-spacing: 0;'>
			<thead id="listReplyHeader">
				<tr height="35">
				    <td colspan='2'>
				       <div style="clear: both;">
				           <div style="float: left;"><span style="color: #3EA9CD; font-weight: bold;">댓글 50개</span> <span>[댓글 목록, 1/10 페이지]</span></div>
				           <div style="float: right; text-align: right;"></div>
				       </div>
				    </td>
				</tr>
			</thead>
			<tbody id="listReplyBody">
			
			    <tr height='35' style='background: #eeeeee;'>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-right:none;'>
			           <span><b>홍길동</b></span>
			        </td>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-left:none;' align='right'>
			           <span>2017-11-10</span> |
			           <span class="deleteReply" style="cursor: pointer;" data-replyNum='310' data-pageNo='1'>삭제</span>
			        </td>
			    </tr>
			    <tr>
			        <td colspan='2' valign='top' style='padding:5px 5px;'>
			              댓글 내용 입니다.
			        </td>
			    </tr>
			    
			    <tr>
			        <td style='padding:7px 5px;'>
			            <button type='button' class='btn btnReplyAnswerLayout' data-replyNum='310'>답글 <span id="answerCount310">0</span></button>
			        </td>
			        <td style='padding:7px 5px;' align='right'>
			            <button type='button' class='btn btnSendReplyLike' data-replyNum='310' data-replyLike='1'>좋아요 <span>5</span></button>
                         <button type='button' class='btn btnSendReplyLike' data-replyNum='310' data-replyLike='0'>싫어요 <span>2</span></button>
			        </td>
			    </tr>
			
			    <tr class='replyAnswer' style='display: none;'>
			        <td colspan='2'>
			            <div id='listReplyAnswer310' class='answerList' style='border-top: 1px solid #cccccc;'></div>
			            <div style='clear: both; padding: 10px 10px;'>
			                <div style='float: left; width: 5%;'>└</div>
			                <div style='float: left; width:95%'>
			                    <textarea cols='72' rows='12' class='boxTA' style='width:98%; height: 70px;'></textarea>
			                 </div>
			            </div>
			             <div style='padding: 0px 13px 10px 10px; text-align: right;'>
			                <button type='button' class='btn btnSendReplyAnswer' data-replyNum='310'>답글 등록</button>
			            </div>
			        
			        </td>
			    </tr>

				

			    <tr height='35' style='background: #eeeeee;'>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-right:none;'>
			           <span><b>가가가</b></span>
			        </td>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-left:none;' align='right'>
			           <span>2017-10-10</span> |
			           <span class="deleteReply" style="cursor: pointer;" data-replyNum='309' data-pageNo='1'>삭제</span>
			        </td>
			    </tr>
			    <tr>
			        <td colspan='2' valign='top' style='padding:5px 5px;'>
			              안녕 하세요.
			        </td>
			    </tr>
			    
			    <tr>
			        <td style='padding:7px 5px;'>
			            <button type='button' class='btn btnReplyAnswerLayout' data-replyNum='309'>답글 <span id="answerCount309">1</span></button>
			        </td>
			        <td style='padding:7px 5px;' align='right'>
			            <button type='button' class='btn btnSendReplyLike' data-replyNum='309' data-replyLike='1'>좋아요 <span>7</span></button>
                         <button type='button' class='btn btnSendReplyLike' data-replyNum='309' data-replyLike='0'>싫어요 <span>1</span></button>
			        </td>
			    </tr>
			
			    <tr class='replyAnswer' style='display: none;'>
			        <td colspan='2'>
			            <div id='listReplyAnswer309' class='answerList' style='border-top: 1px solid #cccccc;'>
			            
						    <div class='answer' style='padding: 0px 10px;'>
						        <div style='clear:both; padding: 10px 0px;'>
						            <div style='float: left; width: 5%;'>└</div>
						            <div style='float: left; width:95%;'>
						                <div style='float: left;'><b>후후후</b></div>
						                <div style='float: right;'>
						                    <span>2017-11-22</span> |
						                    <span class='deleteReplyAnswer' style='cursor: pointer;' data-replyNum='315' data-answer='309'>삭제</span>
						                </div>
						            </div>
						        </div>
						        <div style='clear:both; padding: 5px 5px 5px 5%; border-bottom: 1px solid #ccc;'>
						            답글 입니다.
						        </div>
						    </div>			            
			            
			            </div>
			            <div style='clear: both; padding: 10px 10px;'>
			                <div style='float: left; width: 5%;'>└</div>
			                <div style='float: left; width:95%'>
			                    <textarea cols='72' rows='12' class='boxTA' style='width:98%; height: 70px;'></textarea>
			                 </div>
			            </div>
			             <div style='padding: 0px 13px 10px 10px; text-align: right;'>
			                <button type='button' class='btn btnSendReplyAnswer' data-replyNum='309'>답글 등록</button>
			            </div>
			        
			        </td>
			    </tr>

				
				
			    <tr height='35' style='background: #eeeeee;'>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-right:none;'>
			           <span><b>나나나</b></span>
			        </td>
			       <td width='50%' style='padding:5px 5px; border:1px solid #cccccc; border-left:none;' align='right'>
			           <span>2017-10-08</span> |
			           <span class="deleteReply" style="cursor: pointer;" data-replyNum='308' data-pageNo='1'>삭제</span>
			        </td>
			    </tr>
			    <tr>
			        <td colspan='2' valign='top' style='padding:5px 5px;'>
			              자바를 공부하자.
			        </td>
			    </tr>
			    
			    <tr>
			        <td style='padding:7px 5px;'>
			            <button type='button' class='btn btnReplyAnswerLayout' data-replyNum='308'>답글 <span id="answerCount308">0</span></button>
			        </td>
			        <td style='padding:7px 5px;' align='right'>
			            <button type='button' class='btn btnSendReplyLike' data-replyNum='308' data-replyLike='1'>좋아요 <span>3</span></button>
                         <button type='button' class='btn btnSendReplyLike' data-replyNum='308' data-replyLike='0'>싫어요 <span>0</span></button>
			        </td>
			    </tr>
			
			    <tr class='replyAnswer' style='display: none;'>
			        <td colspan='2'>
			            <div id='listReplyAnswer308' class='answerList' style='border-top: 1px solid #cccccc;'></div>
			            <div style='clear: both; padding: 10px 10px;'>
			                <div style='float: left; width: 5%;'>└</div>
			                <div style='float: left; width:95%'>
			                    <textarea cols='72' rows='12' class='boxTA' style='width:98%; height: 70px;'></textarea>
			                 </div>
			            </div>
			             <div style='padding: 0px 13px 10px 10px; text-align: right;'>
			                <button type='button' class='btn btnSendReplyAnswer' data-replyNum='308'>답글 등록</button>
			            </div>
			        
			        </td>
			    </tr>

			
			</tbody>
			<tfoot id="listReplyFooter">
				<tr height='40' align="center">
		            <td colspan='2' >
		              1 2 3
		            </td>
	            </tr>
			</tfoot>
		</table>
     
     </div>
 </div>


</body>
</html>