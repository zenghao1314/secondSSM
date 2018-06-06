<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>

    <meta charset="utf-8">
    <title>let's gou注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- CSS -->
    <script src="../resources/assets/js/jquery.1.11.3.js"></script>
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
                <h1><a href="">let's gou </a></h1>
            </div>
            <div class="links span8">
                <a class="login" href="${pageContext.request.contextPath}/jump/dologin" rel="tooltip" data-placement="bottom" data-original-title="登录"></a>
            </div>
        </div>
    </div>
</div>

<div class="register-container container">
    <div class="row">
        <div class="register span6" style="width: 450px;">
            <form action="/add" method="post">
                <h2>注册</h2>
                <div class="inp-g">
                    <span class="icon user-mini-icon"></span>
                    <input placeholder="请输入用户名" name="uname" id="uname"/>
                   <%-- <span class="hintMessage">提示信息</span>--%>
                </div>

                <div class="inp-g">
                    <span class="icon org-mini-icon"></span>
                    <input placeholder="请输入密码" name="password" id="password"/>
                   <%-- <span class="hintMessage">提示信息</span>--%>
                </div>

                <div class="inp-g">
                    <span class="icon org-mini-icon"></span>
                    <input placeholder="请确认输入密码" name="repassword" id="repassword"/>

                </div>



                <div class="btn-regist">
                   <input type="submit" value="" style="width: 100%;opacity: 0;position: absolute;" >
                    注册
                </div>
                <div class="goLogin">
                    <a href="${pageContext.request.contextPath}/jump/dologin">已有账号？马上登录。</a>
                </div>
            </form>

        </div>
    </div>
</div>
<!-- Javascript -->
<script src="../resources/assets/js/newfile.js"></script>
<script src="../resources/assets/bootstrap/js/bootstrap.js"></script>
<script src="../resources/assets/js/scripts.js"></script>


</body>

</html>

