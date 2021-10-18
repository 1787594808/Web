<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>
    <script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="/static/css/CSS1.css">
    <script>
        function callback()
        {
            var captcha1 = new TencentCaptcha('1304215962',
                function(res) {
                    console.log(res)
                    if(res.ret === 0){
                        document.ff.action="/login";
                        document.ff.method="post";
                        document.ff.submit();
                    }
                }
            );
            captcha1.show();
        }
    </script>
</head>
<body>
<script>
    var error='<%=request.getParameter("errormeg")%>';
    if(error!='null')
    {
        alert(error);
    }
</script>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="login" method="get" name="ff">
                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名或电子邮件">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="password" name="password" placeholder="密　码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span>
                    <button id="TencentCaptcha"
                            data-appid="appId"
                            data-cbfn="callback"
                            type="button"
                            class="btn btn-default">登录</button>
                </div>
                <div align="center">
                    <span class="text">还没有账号，点击
                            <a href="/register">用户注册</a>
                    </span>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>