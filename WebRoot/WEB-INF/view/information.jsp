<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/22/022
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>个人资料</title>
    <link rel="stylesheet" type="text/css" href="../resources/bs/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../resources/SelectTime/css/lyz.calendar.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/common.css" />
    <link rel="stylesheet" type="text/css" href="../resources/css/information.css" />
    <script src="../resources/js/jquery.min.js" type="text/javascript"></script>
    <script src="../resources/SelectTime/js/lyz.calendar.min.js" type="text/javascript"></script>
    <script src="../resources/js/jquery.validate.min.js"></script>
    <script src="../resources/bs/js/bootstrap.js" type="text/javascript"></script>
    <script src="../resources/js/information.js?asdas=113" type="text/javascript"></script>
</head>
<body>
<div class="bgImg">
    <img src="../resources/images/header.jpg" height="100" width="100%"/>
</div>
<div class="navBox">
    <div class="nav">
        <div class="navItem"><a href="${pageContext.request.contextPath}/jump/Main">首页</a> </div>
        <div class="navItem"><a href="/jump/hostSell">热销商品</a></div>
        <div class="navItem"><a href="/jump/shopping">我的购物车</a></div>
        <div class="navItem"><a href="${pageContext.request.contextPath}/jump/information" >个人资料</a></div>
    </div>
</div>
<div class="container">
    <div class="containTitle">
        个人资料
    </div>
    <form action="${pageContext.request.contextPath}/update" id="formData"  method="post" >
    <div class="row">
        <!--头像显示-->
        <%--<div class="col-md-2">--%>
            <%--<div class="form-group text-center">--%>
               <%--<img src="../resources/images/portrait.png" width="160px" height="160px" class="photo" id="photo" />--%>
                <%--<lable for="IMGportrait" class="upBotton">上传头像</lable>--%>
                <%--<input type="file" class="upfile" name="uimage" id="file"  value="${user.uimage}">--%>
            <%--</div>--%>


        </div>
        <!--个人资料-->

            <div class="col-md-10">
                <div class="info">
                    <div class="itemTltie">
                        基本信息
                    </div>
                    <div class="form-inline">
                        <lable for="name" class="control-label">姓&emsp;&emsp;名：</lable>
                        <input type="text" name="uname" id="uname"  class="form-control" value="${user.uname}" maxlength="20"/>
                    </div>
                    <!--密码-->
                    <div class="form-inline">
                        <lable for="password" class="control-label">密&emsp;&emsp;码：</lable>
                        <input type="password" name="password" id="password"  class="form-control" maxlength="15" value="${user.password}">
                    </div>

                    <div class="form-inline">
                        <lable for="repassword" class="control-label">确认密码：</lable>
                        <input type="password" name="repassword" id="repassword"  class="form-control" maxlength="15" value="${user.password}">
                    </div>
                    <!--年龄-->
                    <!--性别-->
                    <%--<div class="form-inline">--%>
                        <%--<lable for="sex" class="control-label">性&emsp;&emsp;别：</lable>--%>
                        <%--<select class="form-control" name="sex" id="sex">--%>
                            <%--<option value="man">男</option>--%>
                            <%--<option value="woman">女</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                    <!--电话-->
                    <div class="form-inline">
                        <lable for="photo" class="control-label">联系电话：</lable>
                        <input type="text" name="uphone" id="phone"  class="form-control" maxlength="11"/>
                    </div>
                    <!--地址-->
                    <div class="form-inline">
                        <lable for="address" class="control-label">居住地址：</lable>
                        <input type="text" name="uaddress" id="address"  class="form-control"  value="${user.uaddress}"/>
                    </div>
                    <!--邮箱-->
                    <div class="form-inline">
                        <lable for="email" class="control-label">年龄：</lable>
                        <input type="text" name="uage" id="uage"  class="form-control" value="${user.uage}" />
                    </div>
                    <div class="form-inline" >
                        <lable for="email" class="control-label" >id：</lable>
                        <input type="text" name="uid" id="uid"  class="form-control" value="${user.uid}"  hidden="hidden"/>
                    </div>


                </div>

                <div class="deliveryAddress">
                    <%--<div class="itemTltie">--%>
                        <%--默认收货地址--%>
                    <%--</div>--%>
                    <div class="AddressItem">


                        <%--<div class="form-inline">--%>
                            <%--<lable for="deliveryAddress" class="control-label">收货地址：</lable>--%>
                            <%--<input type="text" name="uaddress" id="deliveryAddress"  class="form-control" value="${user.uaddress}"/>--%>
                        <%--</div>--%>
                    <%--</div>--%>


                </div>

                <input type="submit" class="btn btn-primary" value="提交"/>
            </div>

    </div>
    </form>
    <div class="tb-footer-bd text-center" >
        <hr width="70%" />
        <p>
            <span>关于let's gou</span><span>合作伙伴</span><span>营销中心</span><span>廉正举报</span><span>诚征英才</span>
            <span>联系我们</span><span>网站地图</span><span>法律声明及隐私权政策</span>
            <span>知识产权</span>  <b>|</b> <em>© 2003-2017 fusikang.com 版权所有</em>
        </p>
        <p>
            <span>网络文化经营许可证：渝网文[2013]0268-027号</span><b>|</b><span>增值电信业务经营许可证：渝B2-20080224</span><b>|</b>
            <span>信息网络传播视听节目许可证：1109364号</span><b>|</b><span>互联网违法和不良信息举报电话：0571-81683755 fusikang.com</span></p><p><span>
	            <span class="tb-footer-mod" style="background-position:-861px 0px; width:20px; height: 20px; "></span>
	              	渝公网安备 33010002000078号</span>
    </p>
    </div>
</div>
</body>
</html>
