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

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    
<script type="text/javascript">
$(function(){ 
		$("#formLayout").html(createdFormElement());
	function createdFormElement(){
		var gender="F";
		var label, input, p;
		var $form=$("<form>");
		
		$p=$("<p>");
		label=$("<span>",{html:"이름: "});
		input=$("<input>",{type:"text",name:"name"});
		$p.append(label).append(input);
		$form.append($p);
		
		$p=$("<p>");
		label=$("<span>",{html:"나이: "});
		input=$("<input>",{type:"text",name:"age"});
		$p.append(label).append(input);
		$form.append($p);
		
		$p=$("<p>");
		label=$("<span>",{html:"성별: "});
		$p.append(label);
		label=$("<span>",{html:"남자: "});
		$p.append(label);
		input=$("<input>",{type:"radio", name:"gender", value:"M", checked:(gender==="M")});
		$p.append(label).append(input);
		label=$("<span>",{html:"여자: "});
		$p.append(label);
		input=$("<input>",{type:"radio", name:"gender", value:"F", checked:(gender==="F")});
		$p.append(label).append(input);
		$form.append($p);
		
		return $form;
	}
});
</script>
</head>
<body>
<div id="formLayout">
</div>
</body>
</html>