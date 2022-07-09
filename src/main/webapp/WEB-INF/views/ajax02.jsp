<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function test(){
	$.ajax({
		url : 'ajax_result02', type : 'get',
		success : function(data){
			$("#count").text(data)
		}, error : function(){
			alert('문제가 발생하였습니다!!!')
		}
	})
}
</script>
</head>
<body>
	<h1>1</h1><h1>1</h1><h1>1</h1>	<h1>1</h1><h1>1</h1><h1>1</h1>	<h1>1</h1><h1>1</h1><h1>1</h1>
	<button onclick="test()">클릭</button>
	<label id="count">0</label>
</body>
</html>





