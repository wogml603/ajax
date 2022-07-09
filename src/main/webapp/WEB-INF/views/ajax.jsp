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
		url : 'ajax', type : 'get',
		success : function(){
			console.log('성공적으로 연결')
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
</body>
</html>



