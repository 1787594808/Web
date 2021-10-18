<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="charset=utf-8">
<title>Insert title here</title>
</head>
<body>
欢迎您，老先生<h1><%out.write(request.getParameter("name"));%></h1>
</body>
</html>