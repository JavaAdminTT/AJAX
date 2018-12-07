<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="upload" method="post" enctype="multipart/form-data">
		UserName: <input type="text" name=username><br>
		file: <input type="file" name="up">
		
		<input type="submit" value="上传">
	</form>
</body>
</html>