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
	let n = $("#name").val()
	let a = $("#age").val()
	//console.log(n+", "+a)
	let form = { name:n, age:a }
	console.log( form )
	$.ajax({
		url : "ajax_result03", type : 'post',
		data : JSON.stringify( form ) , 
		contentType : 'application/json; charset=utf-8',
		dataType : 'json',
		success : function(data){
			console.log( data )
			$("#label").text( data.name+", "+data.age )
		}
	})
}
</script>

</head>
<body>
	<input type="text" id="name"><br>
	<input type="text" id="age"><br>
	<input type="button" value="클릭" onclick="test()">
	<hr>
	결과 : <label id="label"></label>
</body>
</html>







