<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function getUsers(){
	$.ajax({
		url : 'users', type : 'get', dataType : 'json',
		success : function(list){
			//$("#users").text(list)
			//console.log( list )
			//$("#users").text(list[6].name)
			let h = ""
			for(let i=0;i<list.length; i++){
				h += "<b>이름 : </b>"+list[i].name+"님<br>"
				h += "<b>나이 : </b>"+list[i].age+"살<hr>"
			}
			//h += "<b>이름 : </b>"+list[1].name+"님<br>"
			//h += "<b>나이 : </b>"+list[1].age+"살<hr>"
			
			//$("#users").text( h )
			$("#users").html( h )
		}
	})
}
function userInfo(){
	$.ajax({
		url: 'user/'+$("#userId").val(),
		type: 'get', dataType : 'json',
		success : function(data){
			let h=""
			h += "<b>이름 : </b>"+data.name+"님<br>"
			h += "<b>나이 : </b>"+data.age+"살<hr>"
			$("#users").html(h)
		}
	})
}
function modify(){
	let name = $("#name").val()
	let age = $("#age").val()
	let form = {name:name, age:age}
	$.ajax({
		url: 'modify',type: 'put',
		data: JSON.stringify(form),
		contentType : 'application/json; charset=utf-8',
		success : function(){
			alert('수정되었습니다.')
		}
	})
}
function save(){
	/*
	let id=$("#id").val()
	let pwd=$("#pwd").val()
	let addr=$("#addr").val()
	let age=$("#age1").val()
	let phone=$("#phone").val()
	form = {id:id,pwd:pwd,addr:addr,age:age,phone:phone}
	*/
	let arr = $("#fm").serializeArray()
	console.log(arr)
	let form ={}
	for(let i=0;i<arr.length;i++){
		form[arr[i].name] = arr[i].value
	}
	console.log(form)
	
	$.ajax({
		url: 'save' ,type : 'post',
		data:JSON.stringify(form),
		contentType : 'application/json; charset=utf-8',
		success : function(){
			alert('가입을 축하합니다!')
		}
	})
}
</script>
</head>
<body>
<h3>어떤 내용이 있다</h3>
<h3>아래 내용 답글</h3>
	<span id="users"></span>
	<hr>
	<button onclick="getUsers()">사용자 목록</button>
	<hr>
	<input type="text" id="userId">
	<button onclick="userInfo()">개인 정보</button>
	<hr>
	이름<input type="text" id="name"><br>
	나이<input type="text" id="age"><br>
	<input type="button" onclick="modify()" value="수정">
	<hr>
	<form id="fm">
		<input type="text" name="id"><br>
		<input type="text" name="pwd"><br>
		<input type="text" name="addr"><br>
		<input type="text" name="age1"><br>
		<input type="text" name="phone"><br>
		<input type="button" onclick="save()" value="가입">
		
	</form>
</body>
</html>





