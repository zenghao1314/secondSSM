
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
    <script src="../resources/js/jquery.min.js"></script>
</head>
<body>
<!--描述：管理中心顶部-->
<div class="header">
    <div class="inner_c">
        <div class="logo" style="width: 100px;height: 100%;font-size: 16px;">
            <a class="cancel" href="http://localhost:8080">注销</a>
        </div>

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
                        <td>序列编号</td>
                        <td>商品编号</td>
                        <td>商品名称</td>
                        <td>商品分类</td>
                        <td>商品详情</td>
                        <td>商品价格</td>
                        <td>商品库存</td>
                        <td class="last3">操作</td>
                    </tr>
                    <c:forEach items="${page.list}" var="c" varStatus="index">

                        <tr>
                            <td>${page.firstIndex+index.index+1}</td>
                            <td>${c.gid}</td>
                            <td class="gname">${c.gname}</td>
                            <td class="gtype">${c.gtype}</td>
                            <td class="gcontent">${c.gcontent}</td>
                            <td class="gprice">${c.gprice}</td>
                            <td class="gnum">${c.gnum}</td>
                            <td class="last3">
                                <span class="update" onclick="update(this)">修改</span>
                                <a href="/delete?gid=${c.gid}">
                                <span class="delete">删除</span></a>
                                </td>
                        </tr>
                    </c:forEach>
                </table>
                <div class="btnGroup">
                    第${page.pageCount}/${page.totalPageCount}页
                    <c:if test="${page.pageCount eq 1}">
                        首页&nbsp;&nbsp;上一页
                    </c:if>
                    <c:if test="${page.pageCount > 1}">
                        <a href="${pageContext.request.contextPath}/getAllComponent?pageCount=1">首页</a>
                        &nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.pageCount-1}">上一页</a>
                    </c:if>
                    <c:if test="${page.totalPageCount<5}">
                        <c:forEach begin="1" end="${page.totalPageCount}" varStatus="index">
                            <a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>
                        </c:forEach>
                    </c:if>
                    <c:if test="${page.totalPageCount>5}">
                        <c:if test="${page.pageCount<=3}">
                            <c:forEach begin="1" end="5" varStatus="index">
                                <a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <c:if test="${page.totalPageCount>5}">
                        <c:if test="${page.pageCount>=4&&page.pageCount<=page.totalPageCount-2}">
                            <c:forEach begin="${page.pageCount-2}" end="${page.pageCount+2}" varStatus="index">
                                <a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <c:if test="${page.totalPageCount>5}">
                        <c:if test="${page.pageCount>(page.totalPageCount-2)}">
                            <c:forEach begin="${page.totalPageCount-4}" end="${page.totalPageCount}" varStatus="index">
                                <a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>
                            </c:forEach>
                        </c:if>
                    </c:if>
                    <c:if test="${page.pageCount eq page.totalPageCount}">
                        下一页&nbsp;&nbsp;尾页
                    </c:if>
                    <c:if test="${page.pageCount < page.totalPageCount}">
                        <a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.pageCount+1}">下一页</a>
                        &nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.totalPageCount}">尾页</a>
                    </c:if>
                    <%--<div>首页</div>--%>
                    <%--<div>上一页</div>--%>
                    <%--<div>下一页</div>--%>
                    <%--<div>尾页</div>--%>
                </div>
            </div>
            <div class="curtain">
                <div class="updateBox">
                    <div class="goods" >
                        <div>商品名称：</div>
                        <input type="text" name="gname" id="gname"    placeholder="请输入商品名称"/>
                    </div>
                    <div class="goods" >
                        <div>商品类型：</div>
                        <input type="text" name="gtype" id="gtype"  placeholder="请输入商品类型"/>
                    </div>
                    <div class="goods" >
                        <div>商品库存：</div>
                        <input type="text" name="gnum" id="gnum"  placeholder="请输入商品库存"/>
                    </div>
                    <div class="goods" >
                        <div>商品详情：</div>
                        <input type="text" name="gcontent" id="gcontent" placeholder="请输入订单数量"/>
                    </div>
                    <div class="goods" >
                        <div>商品价格：</div>
                        <input type="text" name="gprice" id="gprice"  placeholder="请输入商品价格"/>
                    </div>
                    <div >
                        <input type="submit" class="zhuce" id="changeProduct" onclick="changeNew()" value="修改" /></input>
                    </div>
                </div>

            </div>
            <!--描述：商品列表-->


            <!--描述：商品录入-->
            <div class="goodsentrybox">
                <div class="goodsentry">
                    <form action="${pageContext.request.contextPath}/Goodsadd" method="post" accept-charset="utf-8" onsubmit="document.charset='utf-8';"
                     enctype="multipart/form-data">
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
                            <div >商品详情：</div>
                            <textarea name="gcontent" id="gcount" placeholder="请输入商品详情" style="display:table-cell;vertical-align: top;"></textarea>
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
                <p>let's gou购物系统后台管理</p>
            </div>
            <div class="geqiang"></div>
            <div class="dingdanchakan">

                   <table cellpadding="0" cellspacing="0" border="1" class="orderInfo">
                        <tr>
                            <td>订单ID</td>
                            <td>用户姓名</td>
                            <td>收货地址</td>
                            <td>联系方式</td>
                            <td>购买的商品</td>
                            <td>总价</td>
                            <td class="td last3">订单操作</td>
                        </tr>

                    </table>
                <div class="orderTable">
                </div>
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
    <form action="#" method="post"  >
        <div class="goods" >
            <div>订单&nbsp;ID：</div>
            <input type="text" name="gname"    placeholder="请输入订单"/>
        </div>
        <div class="goods" >
            <div>用户姓名：</div>
            <input type="text" name="gtype"   placeholder="请输入用户姓名"/>
        </div>
        <div class="goods" >
            <div>收货地址：</div>
            <input type="text" name="gnum"   placeholder="请输入收货地址"/>
        </div>
        <div class="goods" >
            <div>联系方式：</div>
            <input type="text" name="gprname"  placeholder="请输入联系方式"/>
        </div>
        <div class="goods" >
            <div>购买商品：</div>
            <input type="text" name="gprice"   placeholder="请输入购买时间"/>
        </div>
        <div class="goods" >
            <div>总&emsp;&emsp;价：</div>
            <input type="text" name="gcount"   placeholder="请输入农家"/>
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
                <p>let's gou购物系统后台管理</p>
            </div>
            <div class="geqiang"></div>
<div class="look">
<table cellpadding="0" cellspacing="0" border="1">
    <tr>
        <td>序列编号</td>
        <td>用户ID</td>
        <td>用户名称</td>
        <td>联系方式</td>
        <td>用户地址</td>
        <td>用户性别</td>
        <td>用户密码</td>
        <td class="td last3">操作</td>
    </tr>
    <c:forEach items="${UserManager}" var="userManager" varStatus="i">
        <tr>
            <td>${1}</td>
            <td>${userManager.uid}</td>
            <td>${userManager.uname}</td>
            <td>${userManager.uphone}</td>
            <td>${userManager.uaddress}</td>
            <td>${userManager.usex}</td>
            <td>${userManager.password}</td>
            <td class="td last3"><a href="/deleteUser?uid=${userManager.uid}">
                <span class="delete">删除</span></a></td>
        </tr>
    </c:forEach>
</table>
<div class="btnGroup">
    <%--第${page.pageCount}/${page.totalPageCount}页--%>
    <%--<c:if test="${page.pageCount eq 1}">--%>
        <%--首页&nbsp;&nbsp;上一页--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.pageCount > 1}">--%>
        <%--<a href="${pageContext.request.contextPath}/getAllComponent?pageCount=1">首页</a>--%>
        <%--&nbsp;&nbsp;--%>
        <%--<a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.pageCount-1}">上一页</a>--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.totalPageCount<5}">--%>
        <%--<c:forEach begin="1" end="${page.totalPageCount}" varStatus="index">--%>
            <%--<a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>--%>
        <%--</c:forEach>--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.totalPageCount>5}">--%>
        <%--<c:if test="${page.pageCount<=3}">--%>
            <%--<c:forEach begin="1" end="5" varStatus="index">--%>
                <%--<a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>--%>
            <%--</c:forEach>--%>
        <%--</c:if>--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.totalPageCount>5}">--%>
        <%--<c:if test="${page.pageCount>=4&&page.pageCount<=page.totalPageCount-2}">--%>
            <%--<c:forEach begin="${page.pageCount-2}" end="${page.pageCount+2}" varStatus="index">--%>
                <%--<a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>--%>
            <%--</c:forEach>--%>
        <%--</c:if>--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.totalPageCount>5}">--%>
        <%--<c:if test="${page.pageCount>(page.totalPageCount-2)}">--%>
            <%--<c:forEach begin="${page.totalPageCount-4}" end="${page.totalPageCount}" varStatus="index">--%>
                <%--<a id="${index.index }" href="${pageContext.request.contextPath}/getAllComponent?pageCount=${index.index}"><font>${index.index}</font></a>--%>
            <%--</c:forEach>--%>
        <%--</c:if>--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.pageCount eq page.totalPageCount}">--%>
        <%--下一页&nbsp;&nbsp;尾页--%>
    <%--</c:if>--%>
    <%--<c:if test="${page.pageCount < page.totalPageCount}">--%>
        <%--<a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.pageCount+1}">下一页</a>--%>
        <%--&nbsp;&nbsp;--%>
        <%--<a href="${pageContext.request.contextPath}/getAllComponent?pageCount=${page.totalPageCount}">尾页</a>--%>
    <%--</c:if>--%>
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
