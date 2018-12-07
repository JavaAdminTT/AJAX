<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jQuery/jquery-3.3.1.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		$("#stu").click(function(){
				$.get("/AJAX/JsonDemo",function(data){
					$("#stuList").text("").append("<p>姓名:"+data.name+"</P>")
								        .append("<p>年龄:"+data.age+"</P>")
								        .append("<p>性别:"+data.gender+"</P>");
				},"json");
		});
		
		$("#stu1").click(function(){
			
			$.ajax({
				type:"POST",
				url:"/AJAX/JsonDemo",
				data:{id:"中国",pid:2},
				dataType:"json",
				success:function(val){
					$("#stuList").text("").append("<p>姓名:"+val.name+"</P>")
			        .append("<p>年龄:"+val.age+"</P>")
			        .append("<p>性别:"+val.gender+"</P>");
				}
			});
		});
		
	});
</script>
</head>
<body>
		<a href="#" id="stu">getUser</a>
		<a href="#" id="stu1">AJAX</a>
		<div id="stuList"></div>
</body>
</html>