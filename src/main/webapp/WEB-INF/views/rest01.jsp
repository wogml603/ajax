<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function get(){
	$.ajax({ url : "rest", type : "get",
		success : function(data){ $("#label").text( data )}	})
}
function post(){
	$.ajax({ url : "rest", type : "post",
		success : function(data){ $("#label").text( data )}	})
}
function put(){
	$.ajax({ url : "rest", type : "put",
		success : function(data){ $("#label").text( data )}	})
}
function del(){
	$.ajax({ url : "rest", type : "delete",
		success : function(data){ $("#label").text( data )}	})
}
</script>

</head>
<body>

<label id="label"></label><hr>
<button onclick="get()">get</button>
<button onclick="post()">post</button>
<button onclick="put()">put</button>
<button onclick="del()">del</button>

</body>
</html>










