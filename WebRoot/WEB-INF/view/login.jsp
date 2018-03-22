<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta charset="utf-8">
    <title>
        易购登录
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'>
    <link rel="stylesheet" href="../resources/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/assets/css/style.css">
    <link rel="stylesheet" href="../resources/assets/css/common.css" />
    <link rel="stylesheet" type="text/css" href="../resources/assets/css/zhuce.css"/>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->

</head>

<body>

<div class="header">
    <div class="container">
        <div class="row">
            <div class="logo span4">
                <h1><a href="">Yi Gou</a></h1>
            </div>
            <div class="links span8">
                <a class="home" href="${pageContext.request.contextPath}/jump/Manger" rel="tooltip" data-placement="bottom" data-original-title="管理员登陆"></a>
                <a class="register" href="${pageContext.request.contextPath}/jump/doregister" rel="tooltip" data-placement="bottom" data-original-title="注册"></a>
            </div>
        </div>
    </div>
</div>

<div class="register-container container">
    <div class="row">
        <div class="register span6" style="width: 450px;">
            <form action="${pageContext.request.contextPath}/doLogin" method="post">
                <h2>登陆 <span class="red"><strong>易购</strong></span></h2>
                <div class="inp-g">
                    <span class="icon user-mini-icon"></span>
                    <input placeholder="请输入用户名" name="uname"/>
                    <span class="hintMessage">提示信息</span>
                </div>

                <div class="inp-g">
                    <span class="icon org-mini-icon"></span>
                    <input placeholder="请输入密码" name="password"/>
                    <span class="hintMessage">提示信息</span>
                </div>




                <div class="btn-regist">
                  <input type="submit" value="登陆">
                </div>
                <div class="goLogin">
                    <a href="">忘记密码？找回密码。</a>
                </div>
            </form>

        </div>
    </div>
</div>
<!-- Javascript -->
<script src="../resources/assets/js/jquery.1.11.3.js"></script>
<script src="../resources/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="../resources/assets/js/jquery.backstretch.min.js"></script>
<script src="../resources/assets/js/scripts.js"></script>

</body>

</html>

