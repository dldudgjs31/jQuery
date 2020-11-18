<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-size: 13px;
	font-family: "맑은 고딕", 나눔고딕, 돋움;
}

a {
	color: #000000;
	text-decoration: none;
	cursor: pointer;
}

a:active, a:focus, a:hover {
	color: tomato;
	text-decoration: underline;
}

.btn {
	color: #333333;
	font-weight: 500;
	border: 1px solid #cccccc;
	background-color: white;
	text-align: center;
	padding: 3px 10px 5px;
	border-radius: 4px;
}

.btn:active, .btn:focus, .btn:hover {
	background-color: #e6e6e6;
	border-color: #adadad
}

.boxTF {
	border: 1px solid #999999;
	padding: 3px 5px 5px;
	border-radius: 4px;
}

.boxTA {
	border: 1px solid #999999;
	height: 150px;
	padding: 3px 5px;
	border-radius: 4px;
	background-color: #ffffff;
}

.selectField {
	border: 1px solid #999999;
	padding: 3px 5px 3px;
	border-radius: 4px;
}

.body-container {
	clear: both;
	box-sizing: border-box; /* padding과 border는 크기에 포함되지 않음 */
	margin: 0px auto 15px;
	min-height: 500px;
	padding-top: 20px;
}

.body-title {
	color: #424951;
	padding-top: 10px;
	padding-bottom: 5px;
	margin: 0 0 25px 0;
	border-bottom: 1px solid #dddddd;
}

.body-title h3 {
	font-size: 23px;
	min-width: 300px;
	font-family: "Malgun Gothic", "맑은 고딕", NanumGothic, 나눔고딕, 돋움, sans-serif;
	font-weight: bold;
	margin: 0 0 -5px 0;
	padding-bottom: 5px;
	display: inline-block;
	border-bottom: 3px solid #424951;
}

.step:before {
	content: " ㆍ ";
}

.step:after {
	content: " - ";
}

.inputLayout {
	width: 98%;
	min-height: 30px;
	margin: 10px auto 0px;
	padding: 5px;
	border: 1px solid #cccccc;
}

.inputLayout td p {
	padding-bottom: 5px;
}
</style>

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$(".inputLayout").hide();
		$(".inputLayout:first").show();
		$("#btnPrev").text("가입취소");
		$("#btnNext").text("다음단계");

		$("#btnNext").click(function() {
			//필수 입력사항
			if ($(".inputLayout:visible").hasClass("required")) {
				if ($(".inputLayout").first().is(":visible")) {
					//이메일 인증 화면
					alert("이메일 인증을 해야합니다.");
				} else {
					//아이디등 필수 입력 사항 화면
					alert("필수 입력 사항입니다.");
				}
			}

			if ($("#btnNext").hasClass("last")) {
				//마지막 레이아웃에서 가입 버튼을 클릭한 경우
				memberOk();
				//이벤트에서 false를 주게 되면 이벤트를 취소하게 함.
				return false; //=> click(function 으로 이동)
			}

			//마지막 레이아웃이 아닌 경우
			if (!$(".inputLayout").last().is(":visible")) {
				$(".inputLayout:visible").hide().next(".inputLayout").show();
				$("#btnPrev").text("이전단계");
				$("#btnNext").text("다음단계");
				$("#btnNext").removeClass("last");
			}
			//마지막 레이아웃인 경우
			if ($(".inputLayout").last().is(":visible")) {
				$("#btnPrev").text("이전단계");
				$("#btnNext").text("회원가입");
				$("#btnNext").addClass("last");
			}
		});
	});
	
$(function(){
	$("#btnPrev").click(function(){
		if($(".inputLayout").first().is(":visible")){
			alert("회원가입 취소입니다.");
			return false;
		}
		
		$("#btnPrev").text("이전단계");
		$(".inputLayout:visible").hide().prev(".inputLayout").fadeIn(80);
			
			if($(".inputLayout").first().is(":visible")){
					$("#btnPrev").text("가입취소");
				}
			if(!$(".inputLayout").last().is(":visible")){
					$("#btnNext").text("다음단계");
					$("#btnNext").removeClass("last");
				}
			
		
	});
});
	function memberOk() {
		alert("회원가입 완료!");
	}
</script>
</head>
<body>

	<div class="body-container" style="width: 700px;">
		<div class="body-title">
			<h3>
				<span style="font-family: Webdings">2</span> 회원 가입
			</h3>
		</div>

		<div>
			<form name="memberForm" method="post">
				<div class='inputLayout required'>
					<table style="width: 100%; margin-top: 10px; border-spacing: 0;">
						<caption
							style="text-align: left; font-size: 15px; font-weight: 700; margin-bottom: 10px;">
							<span class="step">1 단계</span><span>이메일 인증</span>
						</caption>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">이름</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="userName" maxlength="30" class="boxTF"
										style="width: 95%;" placeholder="이름">
								</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">이메일</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="email1" maxlength="30" class="boxTF"
										size="20"> @ <input type="text" name="email2"
										maxlength="50" class="boxTF" size="25">

									<button type="button" class="btn">인증받기</button>
								</p>
								<p class="help-block">인증 받기 버튼을 클릭하면 입력하신 이메일에서 인증번호를 확인 할 수
									있습니다.</p>

							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">인증번호</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="verificationCode" maxlength="30"
										class="boxTF" style="width: 95%;" placeholder="이메일 인증번호">
								</p>
							</td>
						</tr>

					</table>
				</div>

				<div class='inputLayout required'>
					<table style="width: 100%; margin-top: 10px; border-spacing: 0;">
						<caption
							style="text-align: left; font-size: 15px; font-weight: 700; margin-bottom: 10px;">
							<span class="step">2 단계</span><span>필수 입력 사항</span>
						</caption>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">아이디</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="userId" id="userId"
										style="width: 95%;" maxlength="15" class="boxTF"
										placeholder="아이디">
								</p>
								<p class="help-block">아이디는 5~10자 이내이며, 첫글자는 영문자로 시작해야 합니다.</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">패스워드</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="password" name="userPwd" maxlength="15"
										class="boxTF" style="width: 95%;" placeholder="패스워드">
								</p>
								<p class="help-block">패스워드는 5~10자 이내이며, 하나 이상의 숫자나 특수문자가
									포함되어야 합니다.</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">패스워드 확인</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="password" name="userPwdCheck" maxlength="15"
										class="boxTF" style="width: 95%;" placeholder="패스워드 확인">
								</p>
								<p class="help-block">패스워드를 한번 더 입력해주세요.</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">생년월일</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="birth" maxlength="10" class="boxTF"
										style="width: 95%;" placeholder="생년월일">
								</p>
								<p class="help-block">생년월일은 2000-01-01 형식으로 입력 합니다.</p>
							</td>
						</tr>

					</table>
				</div>

				<div class='inputLayout'>
					<table style="width: 100%; margin-top: 10px; border-spacing: 0;">
						<caption
							style="text-align: left; font-size: 15px; font-weight: 700; margin-bottom: 10px;">
							<span class="step">3 단계</span><span>선택 입력 사항</span>
						</caption>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">전화번호</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="tel1" class="boxTF" maxlength="3"
										style="width: 28%;"> - <input type="text" name="tel2"
										class="boxTF" maxlength="4" style="width: 28%;"> - <input
										type="text" name="tel3" class="boxTF" maxlength="4"
										style="width: 28%;">
								</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">우편번호</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="zip" id="zip" class="boxTF"
										readonly="readonly" style="width: 28%;">
									<button type="button" class="btn">우편번호</button>
								</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">주소</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 1px; margin-bottom: 5px;">
									<input type="text" name="addr1" id="addr1" maxlength="50"
										class="boxTF" style="width: 95%;" placeholder="기본 주소"
										readonly="readonly">
								</p>
								<p style="margin-bottom: 5px;">
									<input type="text" name="addr2" id="addr2" maxlength="50"
										class="boxTF" style="width: 95%;" placeholder="나머지 주소">
								</p>
							</td>
						</tr>

					</table>
				</div>

				<div class='inputLayout'>
					<table
						style="width: 100%; margin-top: 10px; border-spacing: 0; border-collapse: collapse;">
						<caption
							style="text-align: left; font-size: 15px; font-weight: 700; margin-bottom: 10px;">
							<span class="step">4 단계</span><span>약관 동의</span>
						</caption>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">개인정보 수집</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 7px; margin-bottom: 5px;">
									<textarea class="boxTF" style="height: 50px; width: 95%">개인정보 수집에 관한 사항입니다.</textarea>
								</p>
								<p style="margin-top: 7px; margin-bottom: 5px;">
									<label> <input id="personal" name="personal"
										type="checkbox" checked="checked"> 개인정보 수집에 동의합니다.
									</label>
								</p>
							</td>
						</tr>

						<tr>
							<td width="100" valign="top"
								style="text-align: right; padding-top: 5px;"><label
								style="font-weight: 900;">약관동의</label></td>
							<td style="padding: 0 0 15px 15px;">
								<p style="margin-top: 7px; margin-bottom: 5px;">
									<textarea class="boxTF"
										style="height: 50px; width: 95%; font-size: 13px;">이용약관에 관한 사항입니다.</textarea>
								</p>
								<p style="margin-top: 7px; margin-bottom: 5px;">
									<label> <input id="agree" name="agree" type="checkbox"
										checked="checked"> 이용약관에 동의합니다.
									</label>
								</p>
							</td>
						</tr>

					</table>
				</div>

				<div>
					<table style="width: 100%; border-spacing: 0;">
						<tr height="45">
							<td align="center">
								<button type="button" id="btnPrev" class="btn">가입취소</button>
								<button type="button" id="btnNext" class="btn">회원가입</button>
							</td>
						</tr>
						<tr height="30">
							<td align="center" style="color: blue;">${message}</td>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>

</body>
</html>