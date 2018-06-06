<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>热销商品</title>
    <link rel="stylesheet" type="text/css" href="../resources/bs/css/bootstrap.css"  />
    <link rel="stylesheet" type="text/css" href="../resources/bs/fonts/glyphicons-halflings-regular.ttf"/>
    <link rel="stylesheet" href="../resources/css/main.css" />
    <script src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/bootstrap.min.js" ></script>
    <script src="../resources/js/hotProducts.js"></script>
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

    <!--商品界面-->
    <div class="col-md-12 column clearfix text-center" id="SYproducts">

        <!--首页的商品界面-->
        <p class="title">热销商品</p>
        <!--第一行商品只需要一行-->
        <div class="row">
            <div class="col-md-3 column ">
                <input type="hidden" value="100" class="id">
                <div class="gname">绿豆糕</div>
                <img src="http://localhost:8080/resources/images/lvdougao.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥15</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">好吃不贵的绿豆糕，儿时的回忆</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="101" class="id">
                <div class="gname">棉花糖</div>
                <img src="http://localhost:8080/resources/images/mianhuatang.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥2</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">休闲零食缤纷麻花形七彩棉花糖70g</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="101" class="id">
                <div class="gname">南瓜子</div>
                <img src="http://localhost:8080/resources/images/nanguazi.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥12</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">南瓜籽山区农家南瓜子仁休闲零食</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="102" class="id">
                <div class="gname">莫斯利安原味酸奶</div>
                <img src="http://localhost:8080/resources/images/suannai.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥6</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">光明莫斯利安原味酸奶200g</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="103" class="id">
                <div class="gname">怡宝</div>
                <img src="http://localhost:8080/resources/images/yibao.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥2</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">怡宝饮用水 纯净水 555ml</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="103" class="id">
                <div class="gname">可乐</div>
                <img src="http://localhost:8080/resources/images/kele.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥6</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">现货巴厘岛限定网红百事蓝色可乐blue梅子味进口碳酸饮料</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="103" class="id">
                <div class="gname">魔芋辣条</div>
                <img src="http://localhost:8080/resources/images/latiao.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥5</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">魔芋爽180g 魔芋辣条零食魔芋丝素毛肚香麻辣</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

            <div class="col-md-3 column ">
                <input type="hidden" value="103" class="id">
                <div class="gname">大面筋辣条</div>
                <img src="http://localhost:8080/resources/images/latiao1.jpg" height="200px">
                <div class="cost">
                    <div class="price">￥5</div>
                    <div class="exemption">包邮</div>
                </div>
                <div class="introduce">大面筋106g 卫龙辣条零食麻辣辣片小吃特产</div>
                <div class="shoppingCart"><span class="glyphicon glyphicon-shopping-cart shop" title="加入购物车" onclick="addShopCar(this)"></span>
                    <a href="/jump/shopping"><span class="glyphicon glyphicon glyphicon-yen " title="结算" style="float: right;"></span></a>
                </div>
            </div>

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