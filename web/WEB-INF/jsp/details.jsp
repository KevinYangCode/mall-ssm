<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/25
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
    response.setHeader("Cache-Control", "no-store");
%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!-- 商品详情 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>商品详情</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/hmstyle.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/details.css"/>
    <!-- 其它JS文件 -->
    <script type="text/javascript" src="../mall/js/details.js"></script>
</head>
<body style=" background-color:#F2F2F2">
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container">
    <div style="background-color:#FFFFFF">
        <jsp:include page="nav1.jsp"/>
        <!-- 商品介绍 -->
        <form action="${pageContext.request.contextPath}/addCart.action" method="post">
            <div class="row">
                <input type="hidden" name="pid" value="${product.pid}">
                <input type="hidden" name="cname" value="${product.pname}">
                <input type="hidden" name="cprice" value="${product.price}">
                <input type="hidden" name="cimage" value="${product.pimage}">
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}mall/${product.pimage}" style="width: 380px;"/>
                </div>
                <div class="col-md-8">
                    <b>
                        <p style="font-size: 17px">${product.pname}</p>
                    </b>
                    <div ids="price" style="color: #888888; font-size:15px; ">
                        <div style="padding-top:8px; padding-left:8px">店铺优惠<span
                                style="color:red">　官网价直降400，领200券，低至1999</span>
                        </div>
                        <div style="padding-top:8px; padding-left:8px">活动价
                            <span style="color:red">　　￥<b style="font-size:17px" >${product.price}</b></span>
                        </div>
                        <div style="padding-top:8px; padding-left:8px">参考价
                            <span>　　￥<s><b>2899</b></s></span>
                        </div>
                    </div>
                    <div>&nbsp;</div>
                    <div class="place" style="color: #888888; font-size:15px; ">
                        配送至　　
                        <!--选择省份-->
                        <select onchange="selectProvince()" id="province">
                            <option value="-1">--请选择--</option>
                            <option value="0">广东省</option>
                            <option value="1">湖南省</option>
                            <option value="2">福建省</option>
                        </select>
                        <!--选择城市-->
                        <select id="city"></select>
                    </div>
                    <div class="version-color" style="color: #888888; font-size:15px; ">
                        <ul>
                            <li style="border:none">颜　色　　</li>
                            <li><a href="#">幻夜黑</a></li>
                            <li><a href="#">幻影紫</a></li>
                            <li><a href="#">幻影蓝</a></li>
                            <li><a href="#">海鸥灰</a></li>
                            <li><a href="#">铃兰白</a></li>
                        </ul>
                        <ul>
                            <li style="border:none">版　本　　</li>
                            <li><a href="#">8G内存版</a></li>
                            <li><a href="#">尊享版</a></li>
                            <li><a href="#">高配版</a></li>
                        </ul>
                    </div>
                    <div class="details-number" style="color: #888888; font-size:15px; ">
                        <ul>
                            <li style="border:none">数　量　　</li>
                            <li>
                                <input type="text" style="width:35px; height: 27px; " value="1" name="number">
                            </li>
                            <li>库存1000件</li>
                        </ul>
                    </div>
                    <br/>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-9">
                            <div class="buy">
                                <span class="buy1">
                                    <a title="加入购物车">
                                        <input type="submit" value="加入购物车"/>
                                    </a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- 标签 -->
        <div class="row">
            <div class="col-md-12">
                <h3 style="text-align:left; margin-bottom:30px">
                    <b style="color: #F03726;  font-size: 28px">|</b>　商品详情
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10" style="font-size:18px">
                <div>产品参数</div>
                <div>
                    <hr style="width:70px; float: left; border:1px solid red">
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10" style="font-size:16px">
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <td>商品名称:荣耀10</td>
                            <td>摄像头:2400万像素</td>
                            <td>屏幕:IPS屏 5.84英寸</td>
                        </tr>
                        <tr>
                            <td>CPU型号:HUAWEI Kirin 970 (麒麟970)</td>
                            <td>重量:153克</td>
                            <td>电池容量:3400mAh</td>
                        </tr>
                        <tr>
                            <td>CCC认证编号:2018011606057572</td>
                            <td>机身内存:64GB</td>
                            <td>颜色:黑色</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10" style="font-size:18px">
                <div>商品细节</div>
                <div>
                    <hr style="width:70px; float: left; border:1px solid red">
                </div>
            </div>
            <div class="col-md-1"></div>
        </div>
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <img src="${pageContext.request.contextPath}mall/${product.pic_1}"/>
                <img src="${pageContext.request.contextPath}mall/${product.pic_2}"/>
                <img src="${pageContext.request.contextPath}mall/${product.pic_3}"/>
                <img src="${pageContext.request.contextPath}mall/${product.pic_4}"/>
                ${pageContext.request.contextPath}mall/${product.pimage}
            </div>
            <div class="col-md-1"></div>
        </div>
    </div>
</div>
<!-- 页脚部分 -->
<jsp:include page="foot.jsp"/>
</body>
</html>
