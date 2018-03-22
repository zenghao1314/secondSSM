<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/22/022
  Time: 0:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!--适应响应式布局-->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>我的购物车</title>
    <link rel="stylesheet" href="../resources/bs/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/common.css" />
    <link rel="stylesheet" href="../resources/css/shopping.css" />

</head>
<body>
<div class="bgImg">
    <img src="../resources/images/header.jpg" height="100" width="100%"/>
</div>
<div class="navBox">
    <div class="nav">
        <div class="navItem"><a href="/jump/Main"></a>首页</div>
        <div class="navItem"><a href="/jump/hostSell">热销商品</a></div>
        <div class="navItem"><a href="/jump/shopping">我的购物车</a></div>
        <div class="navItem"><a href="/jump/information">个人资料</a> </div>
        <div class="LogAndReg">
            <a href="">登录</a>
            <a href="">注册</a>
        </div>
    </div>
</div>


<div class="container">




    <div class="content">
        <form method="">
            <h2 class="page-header">请确认用户信息</h2>
            <!--value从数据库调出来-->
            <div class="form-group">
                <label for="name">姓名:</label>
                <input type="text" class="form-control" id="name" name="uname" value="${user.uname}">
            </div>
            <div class="form-group">
                <label for="phone">电话:</label>
                <input type="text" class="form-control" id="phone" name="uphone" value="${user.uphone}">
            </div>
            <div class="form-group">
                <label for="address">地址:</label>
                <input type="text" id="address" name="address" class="form-control" value="${user.uaddress}">
            </div>

            <!--商品信息确认-->
            <h2 class="page-header">请确认商品信息</h2>
            <table class="table table-striped ">
                <tr class="success">
                    <td >商品名称</td>
                    <td>单价</td>
                    <td>数量</td>
                    <td>价格</td>
                    <td></td>
                </tr>
                <!--如果要增加商品  复制下面这一个tr标签-->
                <tr class="info">
                    <td>红米4x</td>
                    <td class="price">998</td>
                    <td >
                        <img src="../resources/images/substract.png" class="substractBtn" />
                        <input class="productsNumber" type="text" value="1" readonly="true" />
                        <img src="../resources/images/add.png" class="addBtn"/>
                    </td>
                    <td class="total">998</td>
                    <td ><span class="delete">删除</span></td>
                </tr>
            </table>

            <div class="affirm">
                <span>确认</span>
            </div>
            <div class="filter"></div>
            <div class="orderInfo">
                <div class="closeBtn"></div>
                <table class="table">
                    <div class="text-center orderTitle">确认订单</div>
                    <tr>
                        <td >商品名称</td>
                        <td>单价</td>
                        <td>数量</td>
                        <td>价格</td>
                    </tr>
                    <!--如果要增加商品  复制下面这一个tr标签-->
                    <tr>
                        <td>红米4x</td>
                        <td class="order_price">998</td>
                        <td class="order_number">1</td>
                        <td class="order_total">998</td>
                    </tr>
                </table>

                <table class="table">
                    <tr>
                        <td>总价：</td>
                        <td class="totalPrice">998</td>
                        <td>收货地址：</td>
                        <td class="address">重庆重庆市合川区合阳城街道假日大道1号 重庆邮电大学移通学院</td>
                    </tr>

                    <tr>
                        <td>收货人：</td>
                        <td class="name">帅哥</td>
                        <td>联系方式：</td>
                        <td class="phone">18983167557</td>
                    </tr>
                </table>

                <input type="submit" class="btn btn-lg position"  value="提交订单">
            </div>


        </form>

    </div>

</div>

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
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js" ></script>
<script src="js/shopping.js"></script>
</html>
