<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>测试实例</title>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <script>
        function myFunction() {
            var data = {
                username : "hhh",
                password : "456"
            }
            $.ajax({
                url: "/customer/list",
                contentType:"application/json;charset=UTF-8",
                type: "POST",
                data : JSON.stringify(data),
                dataType: "json",
                success: function (c) {
                    alert("ok");
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.responseText);
                   // alert(XMLHttpRequest.status);
                   // alert(XMLHttpRequest.readyState);
                   // alert(textStatus); // parser error;
                }
            });
        }
    </script>
</head>
<body>
<button onclick="myFunction()">点我</button>
<a href="/customer/list">aa</a>
</body>
</html>

