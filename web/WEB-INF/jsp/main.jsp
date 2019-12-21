<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    response.setHeader("Pragma","no-cache");
    response.setHeader("Cache-Control","no-cache");
    response.setDateHeader("Expires", 0);
    response.setHeader("Cache-Control", "no-store");
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!-- 商城主页 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Kevin商城</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/style.css"/>
</head>
<body style=" background-color:#F2F2F2">
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container">
    <div style="background-color:#FFFFFF">
        <jsp:include page="nav1.jsp"/>
        <!--侧边导航 -->
        <div class="col-md-2 col-sm-2 col-xs-2" style="background-color:#FFFFFF">
            <jsp:include page="nav2.jsp"/>
        </div>
        <!-- 轮播图 -->
        <div class="col-md-8 col-sm-8 col-xs-8">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a href="#"><img src="../mall/img/lunbo1.jpg" title="轮播图1"/></a>
                        <div class="carousel-caption">
                            轮播图1
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img src="../mall/img/lunbo2.jpg" title="轮播图2"/></a>
                        <div class="carousel-caption">
                            轮播图2
                        </div>
                    </div>
                    <div class="item">
                        <a href="#"><img src="../mall/img/lunbo3.jpg" title="轮播图3"/></a>
                        <div class="carousel-caption">
                            轮播图3
                        </div>
                    </div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!-- 小新闻 -->
        <div class="col-md-2 col-sm-2 col-xs-2" style="font-size:12px">
            <div style="font-size:20px;text-align: center; background-color: #A7A7A7;">小新闻</div>
            <div>
                <img src="../mall/img/001.png"/>
            </div>
            <ul class="list-group">
                <a target="_blank" href="#" style="color:black;">
                    <li class="list-group-item"><span style="color:red;">[特惠]</span>洋河年末大促，低至两件五折</li>
                </a>
                <a target="_blank" href="#" style="color:black;">
                    <li class="list-group-item"><span style="color:red;">[公告]</span>华北、华中部分地区配送延迟</li>
                </a>
                <a target="_blank" href="#" style="color:black;">
                    <li class="list-group-item"><span style="color:red;">[特惠]</span>家电狂欢千亿礼券买1送1！</li>
                </a>
            </ul>
            <div class="btn-toolbar" role="toolbar" aria-label="..." style="margin-bottom:10px ;margin-top:-10px">
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-default" onclick="window.location.href='login.jsp'">登录</button>
                </div>
                <div class="btn-group" role="group" aria-label="..." style="float:right;">
                    <button type="button" class="btn btn-default" onclick="window.location.href='register.jsp'">注册
                    </button>
                </div>
            </div>
            <ul class="list-group">
                <a target="_blank" href="#" style="color:black;">
                    <li class="list-group-item"><span style="color:red;">[特惠]</span>洋河年末大促，低至两件五折</li>
                </a>
                <a target="_blank" href="#" style="color:black;">
                    <li class="list-group-item"><span style="color:red;">[公告]</span>华北、华中部分地区配送延迟</li>
                </a>
            </ul>
        </div>
    </div>
    <!--商品部分-->
    <div class="row">
        <div class="col-md-12">
            <h3 style="text-align:center; margin-bottom:30px">
                <b style="color:#B9CC29;  font-size: 28px">|</b>　最新商品　<b style="color:#B9CC29;  font-size: 28px">|</b>
            </h3>
        </div>
    </div>
    <div class="row">
        <!--左边大图部分-->
        <div class="col-md-3 hidden-sm hidden-xs">
            <a href="#" title="手机换新季,等您来pick"><img src="../mall/img/aa.jpg" width="100%" height="100%"/></a>
        </div>
        <div class="col-md-9">
            <a href="#" title="iPhone XS Max 256GB 金色 移动联通电信全网通4G手机 双卡双待">
                <div class="col-md-3 col-sm-4 col-xs-6" style="text-align: center; background-color:#FFFFFF">
                    <img src="../mall/img/a-11.jpg"/>
                    <p>iPhone XS Max 256GB 金色 移动联通电信全网通4G手</p>
                    <p style="color:#FF6600;">￥10999.00</p>
                </div>
            </a>
            <a href="#" title="OPPO K1 OPPO首款千元屏幕指纹手机 4G+64G 梵星蓝 骁龙660|光感屏幕指纹|前置2500万 全网通 移动联通电信4G 双卡双待手机">
                <div class="col-md-3 col-sm-4 col-xs-6" style="text-align: center; background-color:#FFFFFF">
                    <img src="../mall/img/o-11.jpg" style="max-width:90% ; margin: 9px 0;"/>
                    <p>OPPO K1 OPPO首款千元屏幕指纹手机 4G+64G 梵星蓝</p>
                    <p style="color: #FF6600;">￥1599.00</p>
                </div>
            </a>
            <a href="#" title="华为mate10pro 全网通版 6GB+128GB 银钻灰色 移动联通电信4G手机 华为手机">
                <div class="col-md-3 col-sm-4 col-xs-6" style="text-align: center; background-color:#FFFFFF">
                    <img src="../mall/img/h-13.jpg"/>
                    <p>华为mate10pro 全网通版 6GB+128GB 银钻灰色</p>
                    <p style="color: #FF6600;">￥2499.00</p>
                </div>
            </a>
            <a href="#" title="【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G全网通手机">
                <div class="col-md-3 hidden-sm col-xs-6" style="text-align: center;background-color:#FFFFFF">
                    <img src="../mall/img/m-11.jpg"/>
                    <p>【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G</p>
                    <p style="color: #FF6600;">￥3028.00</p>
                </div>
            </a>
            <a href="#">
                <div class="col-md-6 hidden-sm hidden-xs" style="background-color:#FFFFFF;">
                    <div class="col-md-7">
                        <div style="margin-left:-15%">
                            <img src="../mall/img/153915899442687664.jpg" style="max-width:93%"/>
                        </div>
                    </div>
                    <div class="col-md-5" style="background-color:#FFFFFF">
                        <br>
                        <p style="font-size:13px; color: black">iPhone XS功能大幅提升，超大屏双卡都在其</p>
                        <p style="font-size:10px; color: #999999">iPhone XS和iPhone XSMax，它俩除了大小不同，其他地方都一样，我们一起了解下。</p>
                    </div>
                </div>
            </a>
            <a href="#">
                <div class="col-md-6 hidden-sm hidden-xs" style="background-color:#FFFFFF;">
                    <div class="col-md-7">
                        <div style="margin-left:-15%">
                            <img src="../mall/img/153606277921349754.jpg" style="max-width:93%"/>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <br>
                        <p style="font-size:13px; color: black">诺基亚X5：一款无比接地气的“全能”手机</p>
                        <p style="font-size:10px; color: #999999"> Nokia
                            X5一上手，相信很多人都会有相同的感受，做工一如既往的优秀，双面玻璃、聚碳酸酯边框...</p>
                    </div>
                </div>
            </a>
        </div>
    </div>
    <!--品牌部分-->
    <div class="row">
        <div class="col-md-12">
            <h3 style="text-align:center; margin-bottom:30px">
                <b style="color:#1FB5CC;  font-size: 28px">|</b>　品牌墙　<b style="color:#1FB5CC;  font-size: 28px">|</b>
            </h3>
        </div>
        <div class="col-md-12">
            <img src="../mall/img/123552822.png" width="100%"/>
        </div>
    </div>

    <!-- 猜你喜欢 -->
    <div class="row">
        <div class="col-md-12">
            <h3 style="text-align:center; margin-bottom:30px">
                <b style="color: red;  font-size: 28px">|</b>　猜你喜欢　<b style="color: red;  font-size: 28px">|</b>
            </h3>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table">
            <tr>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-13.jpg"/>
                                <p>Apple iPhone 8 64GB 深空灰 移动联通电信4G手机</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-14.jpg"/>
                                <p>【领券立减】Apple iPhone XR 128GB 黑色 移动联通电信</p>
                                <p style="color: #FF6600;">￥6999.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style="background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/h-11.jpg"/>
                                <p>华为 nova3 全面屏高清四摄 6GB+128GB 蓝楹紫色</p>
                                <p style="color: #FF6600;">￥2348.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-11.jpg"/>
                                <p>Apple iPhone 8 64GB 深空灰 移动联通电信4G手机</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div class="" style="text-align: center;">
                                <img src="../mall/img/a-12.jpg"/>
                                <p>Apple iPhone 8 64GB 深空灰 移动联通电信4G手机</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/m-11.jpg"/>
                                <p>【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G</p>
                                <p style="color: #FF6600;">￥3028.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-13.jpg"/>
                                <p>Apple iPhone 8 64GB 深空灰 移动联通电信4G手机</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-14.jpg"/>
                                <p>【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/a-13.jpg"/>
                                <p>【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G</p>
                                <p style="color: #FF6600;">￥4588.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
                <td>
                    <div style=" background-color:#FFFFFF">
                        <a href="#">
                            <div style="text-align: center;">
                                <img src="../mall/img/m-11.jpg"/>
                                <p>【直降200】小米8 黑色 6GB内存 64GB 移动联通电信4G</p>
                                <p style="color: #FF6600;">￥3028.00　<code
                                        style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
<!-- 页脚部分 -->
<jsp:include page="foot.jsp"/>
</body>
</html>
