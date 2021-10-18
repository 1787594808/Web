<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../static/css/test.css"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询信息显示</title>
    <script language="javascript">
        function confirmDel(str){
            return confirm(str);
        }
    </script>
</head>
<body>

</form>

<table align="center">
    <tr>
        <td>部门id</td>
        <td>部门名称</td>
        <td>部门地址</td>
        <td colspan=2>操作</td>
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
<p><a href="/dept/deptList">返回主页面</a></p>
</body>
</html>