<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	姓名：<%=session.getAttribute("name")%><br>
	年龄：<%Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("age")){
				out.println(cookies[i].getValue());	
			}
		}
	%><br>
	学校：<%=application.getAttribute("school")%><br>
</body>
</html>