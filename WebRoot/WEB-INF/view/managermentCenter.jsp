
<%@page import="com.jsx.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理中心</title>
    <link rel="stylesheet" href="../resources/management.css" />

</head>
<body>
<!--描述：管理中心顶部-->
<div class="header">
    <div class="inner_c">
        <h1 class="logo">
            <img src="../images/logo1.png" />
        </h1>
        <div class="nav">
            <ul>
                <li class="current" onclick="changeGoods(this)">商品管理</li>
                <li class="orderManagement" onclick="changeCommodity(this)">订单管理</li>
                <li class="userManagement" onclick="changeUser(this)" >用户管理</li>
            </ul>
        </div>

    </div>
</div>
<!--描述：管理中心顶部-->

<!--描述：商品管理块-->
<div class="content inner_c show">
    <!--描述：商品管理左边选择栏-->
    <div class="content_left">
        <div class="productManage">商品管理</div>
        <ul>
            <li onclick="changeList(this)" class="li1" >商品列表</li>
            <li class="li2" onclick="changeEntry(this)"  >商品录入</li>
        </ul>
    </div>
    <!--描述：管理管理左边选择栏-->

    <!--描述：商品管理右边管理栏-->
    <div class="content_right">
        <div class="content_right_header">
            <div class="content_right_innerl">
                <p>LetsGO购物系统后台管理</p>
            </div>
            <div class="geqiang"></div>
            <!--描述：表单界面-->

            <!--描述：商品列表-->
            <div class="goodsList">
                <table  cellpadding="0" cellspacing="0" border="1">
                    <tr>
                        <td>商品编号</td>
                        <td>商品名称</td>
                        <td>商品分类</td>
                        <td>生产厂家</td>
                        <td>商品价格</td>
                        <td>商品库存</td>
                        <td class="last3">操作</td>
                    </tr>
                    <c:forEach items="${Commodity}" var="commodity" varStatus="i">

                        <tr>
                            <td>${commodity.gid}</td>
                            <td>${commodity.gname}</td>
                            <td>${commodity.gtype}</td>
                            <td>${commodity.gcontent}</td>
                            <td>${commodity.gprice}</td>
                            <td>${commodity.gnum}</td>
                            <td class="last3"><span class="delete">删除</span></td>
                        </tr>

                    </c:forEach>
                </table>
                <div class="btnGroup">
                    <div>首页</div>
                    <div>上一页</div>
                    <div>下一页</div>
                    <div>尾页</div>
                </div>
            </div>
            <!--描述：商品列表-->


            <!--描述：商品录入-->
            <div class="goodsentrybox">
                <div class="goodsentry">
                    <form action="${pageContext.request.contextPath}/Goodsadd" method="post" enctype="multipart/form-data">
                        <div class="goods">
                            <div>商品名称：</div>
                            <input type="text" name="gname" id="gname"  placeholder="请输入商品名称"/>
                        </div>
                        <div class="goods">
                            <div>商品类型：</div>
                            <input type="text" name="gtype" id="gtype" placeholder="请输入商品类型"/>
                        </div>
                        <div class="goods">
                            <div>商品库存：</div>
                            <input type="text" name="gnum" id="gnum"  placeholder="请输入商品库存"/>
                        </div>
                        <div class="goods">
                            <div>商品价格：</div>
                            <input type="text" name="gprice" id="gprice"  placeholder="请输入商品价格"/>
                        </div>
                        <div class="goods">
                            <div style="float: left;">商品详情：</div>
                            <textarea name="gcontent" id="gcount" placeholder="请输入商品详情"></textarea>
                        </div>
                        <div class="goods">
                            <div style="position: absolute;">商品图片：</div>
                            <div class="imgBox">
                                <img src="" class="showImg" width="100%" height="100%">
                                <input type="file" name="file" class="upImg" onchange="changeImg(this)"></input>
                            </div>
                        </div>
                        <input type="submit" class="zhuce" /></input>
                    </form>
                </div>
            </div>
            <!--描述：商品录入-->

            <!--描述：表单界面-->
        </div>
    </div>
</div>
<!--描述：商品管理块-->

<!--描述：订单管理块-->

<div class="content inner_c ">
    <!--描述：订单管理左边选择栏-->
    <div class="content_left">
        <div class="productManage">订单管理</div>
        <ul>
            <li onclick="read(this)" class="OrderView">订单查看</li>
            <li onclick="alert(this)" class="OrderModify">订单修改</li>
        </ul>
    </div>
    <!--描述：订单管理左边选择栏-->

    <!--描述：订单管理右边管理栏-->
    <div class="content_right">
        <div class="content_right_header">
            <div class="content_right_innerl">
                <p>LetsGO购物系统后台管理</p>
            </div>
            <div class="geqiang"></div>
            <div class="dingdanchakan">
                <table cellpadding="0" cellspacing="0" border="1">
                    <tr>
                        <td>订单ID</td>
                        <td>商品ID</td>
                        <td>用户ID</td>
                        <td>购买时间</td>
                        <td>订单数量</td>
                        <td>发货地址</td>
                        <td>是否付款</td>
                        <td class="td last3">订单删除</td>
                    </tr>

                    <c:forEach items="${Order}" var="item">
                        <tr>
                            <td>${item.orderid}</td>
                            <td>${item.gid}</td>
                            <td>${item.userid}</td>
                            <td>${item.odate}</td>
                            <td>${item.onum}</td>
                            <td>${item.oaddress}</td>
                            <td>${item.opayment}</td>

                            <td class="td last3"><span class="delete">删除</span></td>
                        </tr>
                    </c:forEach>

                </table>

                <div class="btnGroup">
                    <div>首页</div>
                    <div>上一页</div>
                    <div>下一页</div>
                    <div>尾页</div>
                </div>
            </div>
            <!--描述：订单管理左边选择栏-->

            <!--描述：订单修改-->
            <div class="dingdanxiugai">
                <div class="goodsentry">
                    <form action="#" method="post">
                        <div class="goods" >
                            <div>商品名称：</div>
                            <input type="text" name="gname"    placeholder="请输入商品名称"/>
                        </div>
                        <div class="goods" >
                            <div>商品类型：</div>
                            <input type="text" name="gtype"   placeholder="请输入商品类型"/>
                        </div>
                        <div class="goods" >
                            <div>商品编号：</div>
                            <input type="text" name="gnum"   placeholder="请输入商品编号"/>
                        </div>
                        <div class="goods" >
                            <div>生产厂家：</div>
                            <input type="text" name="gprname"  placeholder="请输入商品生产厂家"/>
                        </div>
                        <div class="goods" >
                            <div>商品价格：</div>
                            <input type="text" name="gprice"   placeholder="请输入商品价格"/>
                        </div>
                        <div class="goods" >
                            <div>商品库存：</div>
                            <input type="text" name="gcount"   placeholder="请输入商品库存"/>
                        </div>
                        <div >
                            <input type="submit" class="zhuce" /></input>
                        </div>
                    </form>
                </div>
            </div>
            <!--描述：订单修改-->


        </div>
    </div>
</div>
<!--描述：订单管理块-->

<!--描述：用户管理块-->
<div class="content inner_c">
    <!--描述：用户管理左边选择栏-->
    <div class="content_left">
        <div class="productManage">用户管理</div>
        <ul>
            <li onclick="changeL(this)" class="userView">用户查看</li>
            <li onclick="jurisdicte(this)" class="registAd">注册管理员</li>
        </ul>
    </div>
    <!--描述：用户管理左边选择栏-->

    <!--描述：用户管理右边管理栏-->
    <div class="content_right">
        <div class="content_right_header">
            <div class="content_right_innerl">
                <p>LetsGO购物系统后台管理</p>
            </div>
            <div class="geqiang"></div>
            <div class="look">
                <table cellpadding="0" cellspacing="0" border="1">
                    <tr>
                        <td>用户ID</td>
                        <td>用户名称</td>
                        <td>用户通讯</td>
                        <td>用户地址</td>
                        <td>用户性别</td>
                        <td>用户密码</td>
                        <td class="td last3">操作</td>
                    </tr>
                    <c:forEach items="${UserManager}" var="userManager" varStatus="i">
                        <tr>
                            <td>${userManager.uid}</td>
                            <td>${userManager.uname}</td>
                            <td>${userManager.uphone}</td>
                            <td>${userManager.uaddress}</td>
                            <td>${userManager.usex}</td>
                            <td>${userManager.password}</td>
                            <td class="td last3"><span class="delete">删除</span></td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="btnGroup">
                    <div>首页</div>
                    <div>上一页</div>
                    <div>下一页</div>
                    <div>尾页</div>
                </div>
            </div>
            <!--描述：用户管理左边选择栏-->

            <!--描述：权限分配-->
            <div class="quanxianfenpei">
                <div class="goodsentry">
                    <form action="manager2.do" method="post">
                        <div class="goods" >
                            <div>手机号:</div>
                            <input type="text" name="uphone"  placeholder="手机号"/>
                        </div>
                        <div class="goods" >
                            <div>用户名:</div>
                            <input type="text" name="uname" placeholder="用户名"/>
                        </div>
                        <div class="goods" >
                            <div >密&emsp;码:</div>
                            <input type="text" name="upassword" placeholder="密码"/>
                        </div>

                        <div >
                            <input type="submit" class="zhuce" /></input>
                        </div>
                    </form>
                </div>
            </div>
            <!--描述：权限分配-->

        </div>
    </div>
</div>
<!--描述：用户管理块-->
</body>


<script type="text/javascript" src="../resources/change.js" ></script>
<body>

</body>
</html>
