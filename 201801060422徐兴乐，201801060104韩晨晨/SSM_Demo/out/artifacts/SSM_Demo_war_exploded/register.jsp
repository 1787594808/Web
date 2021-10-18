<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户注册</title>
    <script src="https://ssl.captcha.qq.com/TCaptcha.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="/static/css/CSS1.css">
    <script type="text/javascript">
        function check(){
            var username2 = document.getElementById("username").value;
            var password2 = document.getElementById("password").value;

            if(username2==""||username2==null){
                alert("请输入用户名");
                return false;
            }
            if(password2==""||password2==null){
                alert("请输入密码");
                return false;
            }
            return  true;
        }
    </script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form action="save" method="post" name="formUser" class="form-horizontal" onsubmit="return check()">
                <span class="heading">用户注册</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="password"  name="password" placeholder="密码">
                    <i class="fa fa-user"></i>
                </div>
                <div class="text-left">
                    <div class="checkbox-custom checkbox-primary">
                        <input type="checkbox" id="agreement-checkbox" checked="checked"/>
                        <label>我已阅读并接受<a target="_blank" href="#" id="link-term">《服务条款》</a></label>
                    </div>
                </div>

                <button type="submit" id="register-button" class="btn" data-cbfn="check">
                    完成注册
                </button>
            </form>
        </div>
    </div>
</div>
</body>
</html>