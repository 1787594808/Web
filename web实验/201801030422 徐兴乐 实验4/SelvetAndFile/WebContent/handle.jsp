<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%String user = request.getParameter("name");
		String name = new String(user.getBytes("iso8859-1"), "utf-8");
		String age = request.getParameter("age");
		String sch = request.getParameter("school");
		String school = new String(sch.getBytes("iso8859-1"), "utf-8");
		session.setAttribute("name", name);
		Cookie cookie = new Cookie("age", age);
		cookie.setMaxAge(1000000);
		response.addCookie(cookie); 
		application.setAttribute("school", school);
		response.sendRedirect("reguser2.jsp");
	%>
</body>
</html>