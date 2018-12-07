<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
		
		window.onload = function(){
			var stu = document.getElementById("stu");
			
			stu.onclick = function(){
				var xhr = new XMLHttpRequest();
		
				xhr.open("GET","/AJAX/JsonDemo?"+Math.random(),true);
				
				xhr.send();
				
				xhr.onreadystatechange=function(){

					if(xhr.readyState == 4 && xhr.status == 200){
						
						var stuList = document.getElementById("stuList");
						var json = xhr.responseText;
					    
						var jsonObj = JSON.parse(json);
					     stuList.innerHTML = "<p>姓名:"+jsonObj.name+"</P>"+
					                                    "<p>年龄:"+jsonObj.age+"</P>"+
					                                    "<p>性别:"+jsonObj.gender+"</P>";
					}
				}
				return false;
			}
			};

</script>
</head>
<body>

<%-- 		<%
				Date date = new Date();
				out.print(date.toString());
		%>
		
		<br><br> --%>

		
		<a href="#" id="stu">getUser</a><br><br>
		
		<a href="/AJAX/meinv.jsp?money=1">带钱看美女</a>
		<a href="/AJAX/meinv.jsp">没带钱看美女</a>
		<div id="stuList"></div>
</body>
</html>