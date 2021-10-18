<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../static/css/test.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门信息表</title>
<script language="javascript"> 
	function confirmDel(str){ 
		return confirm(str); 
	} 
</script>

   <style>
      .button2{
         text-align:center;
         background-color: red;
         border: none;
         color: white;
         padding: 20px 40px;
         border-radius:15px;
      }
   </style>
</head>
<body>
</form>
   <table align="center">
   <tr>
   <th>部门id</th>
   <th>部门名称</th>
   <th>部门地址</th>
   <th colspan=2>操作</th>
   </tr>
   <c:forEach items="${depts}" var="d">
   <tr>
   <td>${d.deptid}</td>
   <td>${d.deptname}</td>
   <td>${d.deptaddress}</td>
   <td><a href="/dept/toedit?deptid=${d.deptid}">编辑</a></td>
   <td><a href="/dept/todelete?deptid=${d.deptid}"
        onclick ="javascript:return confirmDel('确定要删除${d.deptname}吗')">删除</a></td>
   </tr>
   </c:forEach>
   </table>
   </br>
   <div align="center">
      <a href="/dept/toadd">
         <button class="button2"> 新增 </button>
      </a>
      &ensp;&ensp;&ensp;&ensp;
      <a href="/dept/d_search">
         <button class="button2"> 查询 </button>
      </a>
   </div>
</body>
</html>