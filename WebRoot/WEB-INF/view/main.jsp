<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>主页</title>
    <link rel="stylesheet" type="text/css" href="../resources/bs/css/bootstrap.css"  />
    <link rel="stylesheet" type="text/css" href="../resources/bs/fonts/glyphicons-halflings-regular.ttf"/>
<link rel="stylesheet" href="../resources/css/main.css" />
<script src="../resources/js/jquery.min.js"></script>
<script src="../resources/js/bootstrap.min.js" ></script>
<script src="../resources/js/main.js"></script>
</head>
<body>
<!--第一部分顶部导航栏-->
<div class="bgImg">
    <img src="../resources/images/header.jpg" height="100" width="100%"/>
</div>
<div class="navBox">
    <div class="nav">
        <div class="navItem"> <a href="/jump/Main">首页</a></div>
        <div class="navItem"> <a href="/jump/hostSell"> 热销商品</a></div>
        <div class="navItem"> <a href="${pageContext.request.contextPath}/jump/shopping">我的购物车</a></div>
        <div class="navItem"> <a href="${pageContext.request.contextPath}/jump/information"> 个人资料</a></div>
        <div class="LogAndReg">
            <a href="http://localhost:8080/">注销</a>
        </div>
    </div>

</div>

<div class="container">

    <!--第二部分搜索框-->
    <div class="nav2">
        <form action="" method="post" >
            <div class="left">
               let's gou
            </div>
            <div class="right">
                <div class="searchBox">
                    <span class="searchIcon" style="background: url(../resources/images/search.png);"></span>
                    <input type="text" class="searInput" name="product" placeholder="请输入要搜索的商品 " />
                    <button class="searBtn"><a href="${pageContext.request.contextPath}/jump/SeachGoods">搜索</a></button>
                </div>
            </div>
        </form>
    </div>
    <!--商品界面-->
        <div class="col-md-12 column clearfix text-center" id="SYproducts">

            <!--首页的商品界面-->
            <p class="title">全部商品</p>
            <!--第一行商品只需要一行-->
            <c:forEach items="${Commodity}" var="commodity" varStatus="i">
            <div class="row">
                <div class="col-md-3 column ">
                    <input type="hidden" value="51" class="id">
                    <div class="gname">${commodity.gname}</div>
                    <%--<img src="http://localhost:8080/resources/images/fangbianmian.jpg" height="200px">--%>
                    <img src="http://localhost:8080/resources/images/${commodity.gimage}" height="200px">
                    <div class="cost">
                        <div class="price">${commodity.gprice}</div>
                        <div class="exemption">包邮</div>
                    </div>
                    <div class="introduce">${commodity.gcontent}</div>
                    <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                        <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                    </div>
                </div>
                </c:forEach>




            </div>
            <div class="loadMore">点击加载更多</div>
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
</html>