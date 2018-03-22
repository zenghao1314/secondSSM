<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/22/022
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>热销商品</title>
    <link rel="stylesheet" type="text/css" href="bs/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/hotProducts.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="bs/js/holder.min.js" ></script>
    <script type="text/javascript" src="js/hotProducts.js" ></script>
</head>
<body>
<div class="container">
    <!--顶部导航栏-->
    <div id="title" >
        <ul class="text-center">
            <li>
                首页
            </li>
            <li>
                热销商品
            </li>
            <li>
                我的购物车
            </li>
            <li>
                个人资料
            </li>
            <li>
                用户登录
            </li>
            <li>
                用户注册
            </li>
        </ul>
    </div>

    <div class="page-header">
        <span><font size="6">热销商品</font></span><span>
					<div class="right ">
						<span style="vertical-align: center;"><input type="text " name="product " placeholder="请输入要搜索的商品 " class="ssk" style="height: 33px; width: 250px; border-radius: 5px; "/>
						<button class="btn btn-md btn-primary position">搜索</button></span>
					</div></span>

    </div>
    <!--第一行商品-->
    <div class="row">
        <!--第一个商品-->
        <div class="col-md-3">
            <div class="col-md-6" >
                <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
            </div>
            <div class="col-md-6 style">
                <!--商品介绍-->
                <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
                <br />
                <span class="price">￥1490.00</span><br />
                <span>销量：520</span><br />
                <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
            </div>
        </div>
        <!--第二个商品-->
        <div class="col-md-3">
            <div class="col-md-6">
                <a href="products.html"><img src="images/办公设备.jpg"style="width: 90%; "/></a>
            </div>
            <div class="col-md-6 style">
                <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
                <br />
                <span class="price">￥1490.00</span><br />
                <span>销量：520</span><br />
                <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
            </div>
        </div>
        <!--第三个商品-->
        <div class="col-md-3"">
        <div class="col-md-6">
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
</div>

<!--第二行商品-->
<div class="row">
    <!--第一个商品-->
    <div class="col-md-3">
        <div class="col-md-6">
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
    <!--第二个商品-->
    <div class="col-md-3">
        <div class="col-md-6" >
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
    <!--第三个商品-->
    <div class="col-md-3">
        <div class="col-md-6" >
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
</div>
<!--第三行商品-->
<div class="row">
    <!--第一个商品-->
    <div class="col-md-3" >
        <div class="col-md-6" >
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
    <!--第二个商品-->
    <div class="col-md-3" >
        <div class="col-md-6">
            <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
        </div>
        <div class="col-md-6 style">
            <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
            <br />
            <span class="price">￥1490.00</span><br />
            <span>销量：520</span><br />
            <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
        </div>
    </div>
    <!--第三个商品-->
    <div class="col-md-3">
        <div class="col-md-6"" >
        <a href="products.html"><img src="images/办公设备.jpg" style="width: 90%; "/></a>
    </div>
    <div class="col-md-6 style">
        <div class="introduce">卡西欧(CASIO)手表 G-SHOCK系列 </div>
        <br />
        <span class="price">￥1490.00</span><br />
        <span>销量：520</span><br />
        <a href="shopping.html"><button class="btn btn-md products-button">立即购买</button></a>
    </div>
</div>
</div>
<h2 class="text-center"><a>加载更多</a></h2>
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
