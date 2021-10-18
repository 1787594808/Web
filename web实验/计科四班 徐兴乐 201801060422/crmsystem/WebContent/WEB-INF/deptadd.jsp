<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" type="text/css" href="../static/css/test.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门新增</title>
</head>
<body>

 <form action="/dept/save" method="post">
   <table align="center">
   <td>部门编号</td>
   <td><input id="deptid" name="deptid" ></td>
   <tr>
   <td>部门名称</td>
   <td><input id="deptname" name="deptname" /></td>
   </tr>
   <tr>
   <td>部门地址</td>
   <td><input id="deptaddress" name="deptaddress" /></td>
   </tr>
   <tr>
   <td colspan=2><input type="submit" value="submit"/></td>  
   </tr>
   </table>
 </form>
 

</body>
</html>