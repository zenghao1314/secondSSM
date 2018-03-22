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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>商品详细信息</title>
    <link rel="stylesheet" type="text/css" href="bs/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/products.css" />
    <script type="text/javascript" src="js/jquery.min.js" ></script>
    <script type="text/javascript" src="bs/js/holder.min.js" ></script>
    <script type="text/javascript" src="js/products.js" ></script>
</head>
<body>
<div class="container">
    <!--导航栏-->
    <div id="title">
        <ul class="text-center">
            <li>
                <a href="main.html">首页</a>
            </li>
            <li>
                <a href="hotProducts.jsp">热销商品</a>
            </li>
            <li>
                <a href="shopping.html">我的购物车</a>
            </li>
            <li>
                <a href="information.html">个人资料</a>
            </li>
            <li>
                <a href="#">切换用户</a>
            </li>
            <li>
                <a href="#">注册新用户</a>
            </li>
        </ul>
    </div>
    <!--导航栏结束-->
    <!--目录栏-->
    <div class="introduce">
        <div class="left"><a href="#">首页</a>&gt;XX专区&gt;<a href="#">红米_4X</a></div>
        <div class="right ">
						<span style="vertical-align: center;"><input type="text " name="product " placeholder="请输入要搜索的商品 " class="ssk" style="height: 33px; width: 250px; border-radius: 5px; "/>
						<button class="btn btn-md btn-primary position">搜索</button></span>
        </div>
    </div>
    <!--目录栏结束-->
    <div class="row">
        <!--左侧的图片区-->
        <div class="col-md-5" style=" height: auto;">
            <!--大图片-->
            <div class="img-big">
                <img src="images/详细信息IMG/大图/红米4x_3.jpg" style="display: block;" />
                <img src="images/详细信息IMG/大图/红米4x_2.jpg" />
                <img src="images/详细信息IMG/大图/红米4x_1.jpg" />
            </div>
            <div class="img-less text-center">
                <!--小图片-->
                <div><img src="images/详细信息IMG/小图/红米4x_3.jpg" /></div>
                <div><img src="images/详细信息IMG/小图/红米4x_2.jpg" /></div>
                <div><img src="images/详细信息IMG/大图/红米4x_1.jpg" /></div>
            </div>
        </div>
        <!--图片区结束-->
        <!--右侧的介绍区-->
        <div class="col-md-7">
            <!--介绍文字-->
            <h3 class="page-header">小米4X 红米4X 手机 香槟金 全网通(2G RAM+16G ROM)标配</h3>
            <table cellpadding="20px">
                <tr>
                    <td>销量:</td>
                    <td style="color:red;">&nbsp;<b>421</b></td>
                </tr>
                <!--站位行间距-->
                <tr><td>&emsp;</td></tr>
                <tr>
                    <td>价格:</td>
                    <td style="color:red;">￥998</td>
                </tr>
                <!--站位行间距-->
                <tr><td>&emsp;</td></tr>
                <tr>
                    <td>优惠:</td>
                    <td class="YHJ">满500减50</td>
                </tr>
                <!--站位行间距-->
                <tr><td>&emsp;</td></tr>
                <tr>
                    <td>促销:</td>
                    <td><code>下单者都可以获得手机的专属耳机</code></td>
                </tr>
            </table>
            <br />

            <!--选择版本-->
            <div class="choose">
						<span>请选择你手机的版本
						<select class="form-control">
							<option>全网通(2G RAM+16G ROM)标配</option>
							<option>全网通(3G RAM+32G ROM)高配</option>
						</select></span>
            </div>
            <br />
            <!--商品数量-->
            <div class="products">
                数量:<input type="text" name="number" value="1" id="number"/>
                <button class="btn btn-danger btn-dm">加入购物车</button>
            </div>
            <!--静态网页别动-->
            <!--各种服务-->
            <div class="">
                <table >
                    <!--站位专用-->
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>承诺&emsp;</td>
                        <td><img src="images/16x16小图标/7天包退16-16.png"/>8天退货&emsp;</td>
                        <td><img src="images/16x16小图标/包换16-16.png"/>免费更换&emsp;</td>
                        <td><img src="images/16x16小图标/包邮16-16.png"/>包邮&emsp;</td>
                        <td><img src="images/16x16小图标/公益宝贝16-16.png"/>公益宝贝</td>
                    </tr>
                    <!--站位专用-->
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>支付方式&emsp;</td>
                        <td><img src="images/16x16小图标/信用卡支付16-16.png"/>信用卡</td>
                        <td><img src="images/16x16小图标/支付宝16-16.png"/>支付宝</td>
                        <td><img src="images/16x16小图标/蚂蚁花呗16-16.png"/>蚂蚁花呗</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<!--商标 版本号-->
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
