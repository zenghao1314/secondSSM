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
    <link href="css/cityLayout.css" type="text/css" rel="stylesheet">
    <style type="text/css">
        html,body,p,th,td,input,select,textarea,button,div {padding:0; margin:0;font-family: "microsoft yahei",Tahoma, sans-serif ; font-size:12px; line-height:180%;}
        html,body{background:#F6F6F6;}
        dl,ol,dt,dd,ul,li,form,h1,h2,h3,h4,h5,h6 {margin:0; padding:0;list-style:none; }
        input,select,textarea,button{vertical-align:middle;resize:none;}
        .clear{clear:both;overflow:hidden; height:1px;}
        .clearfix{overflow:auto;height:1%}
        img{border:0; vertical-align:middle}
        body,a,a:visited{font-size:12px;color:#000;text-decoration:none;}
        a:hover{ text-decoration:underline;color:#333}
        .city_input { border:1px solid #d6d6d6; width:180px; height:30px; background:url(images/ts-indexcity.png) no-repeat; line-height:30px; margin-top:5px;  text-indent:5px;}
        .cityinput { background:url(images/ts-city.png); width:180px; height:30px; border:#d6d6d6 1px solid; margin-top:5px; text-indent:5px; line-height:30px;   text-indent:5px;}
        .cityzinput { background:url(images/ts-zcity.png); width:180px; height:30px; border:#d6d6d6 1px solid; margin-top:15px; text-indent:5px; line-height:30px;   text-indent:5px;}
        a,a:hover{text-decoration:none}img{border:0}ul{list-style:none;margin:0;}label{color:#6CBD45;font-size:14px;font-weight:bold;padding-bottom:0.5em;margin:0;}.h3{font-size:13px;font-weight:bold;}#show{background:url(images/photo.jpg)}#meun{color:#fff;padding-left:10px;}#meun img{float:left;}#submeun{margin-left:70px;float:left;}#submeun span{text-align:center;margin-right:10px;float:left;display:inline;}#submeun span a{color:#fff;height:50px;line-height:50px;font-size:14px;font-weight:bold;text-align:center;padding-left:15px;padding-right:15px;display:block;}#submeun span.cur{text-align:center;background:#82ce18;margin-right:10px;float:left;display:inline;}#top{background-color:#000;margin:0em 0 10px 0em;border-style:solid;border-width:1px;border-color:#E5E5E5;height:50px;line-height:50px;}label.subtitle{font-size:13px;float:right;color:#6CBD45;margin:0 10px;text-align:right;}h1.title{height:50px;font-size:12px;background:url(logo.png) no-repeat;}h1.title a:link,h1.title a:visited,h1.title a:hover{color:#000;text-decoration:none;}
    </style>
</head>
<body>


<center>
    <input name="" id="start1" autocomplete="off" type="text" value="请选择/输入城市名称" class="city_input  inputFocus proCityQueryAll proCitySelAll" ov="请选择/输入城市名称">
</center>
<br /><br /><br /><br /><br />
<script type="text/javascript">/*300*250，创建于2012-8-23*/ var cpro_id = 'u1034140';</script><script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script>
<p>&nbsp;</p><p><script type="text/javascript">/*640*60，创建于2012-8-23*/ var cpro_id = 'u1034155';</script><script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script></p>

<p><script type="text/javascript">/*728*90，创建于2012-8-23*/ var cpro_id = 'u1034144';</script><script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script></p>
<p>&nbsp;</p>
<!--弹出省省市-->
<div class="provinceCityAll">
    <div class="tabs clearfix">
        <ul class="">
            <li><a href="javascript:" class="current" tb="hotCityAll">热门城市</a></li>
            <li><a href="javascript:" tb="provinceAll">省份</a></li>
            <li><a href="javascript:" tb="cityAll" id="cityAll">城市</a></li>
            <li><a href="javascript:" tb="countyAll" id="countyAll">区县</a></li>
        </ul>
    </div>
    <div class="con">
        <div class="hotCityAll invis">
            <div class="pre"><a></a></div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next"><a class="can"></a></div>
        </div>
        <div class="provinceAll invis">
            <div class="pre"><a></a></div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">江西省</a></li> -->
                </ul>
            </div>
            <div class="next"><a class="can"></a></div>
        </div>
        <div class="cityAll invis">
            <div class="pre"><a></a></div>
            <div class="list">
                <ul>
                    <!-- 					<li><a href="javascript:"  class="current">南京</a></li> -->
                </ul>
            </div>
            <div class="next"><a class="can"></a></div>
        </div>
        <div class="countyAll invis">
            <div class="pre"><a></a></div>
            <div class="list">
                <ul>
                </ul>
            </div>
            <div class="next"><a class="can"></a></div>
        </div>
    </div>
</div>
<script src="js/jquery-1.6.2.min.js"></script>
<script src="js/public.js"></script>
</body>
</html>
