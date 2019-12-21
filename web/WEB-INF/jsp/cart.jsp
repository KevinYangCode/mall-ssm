<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/28
  Time: 10:21
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
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我的购物车</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/head.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/foot.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/style.css"/>
    <!-- 其它JS文件 -->
    <script type="text/javascript" src="../mall/js/details.js"></script>

</head>
<body>
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container">
    <div style="background-color:#FFFFFF">
        <jsp:include page="nav1.jsp"/>
        <!-- 购物车 -->
        <div class="place" style="color: red; font-size:18px; ">
            　${UserData.username}的购物车
        </div>
        <c:if test="${empty CartList}">
            <div class="col-md-3"></div>
            <div class="col-md-9">
                <h3>购物车为空，请先<a href="${pageContext.request.contextPath}/productList.action">添加商品</a></h3>
                <br/>
                <br/>
                <br/>
            </div>
        </c:if>
        <c:if test="${not empty CartList}">
            <div class="table-responsive container-fluid">
                <table class="table table-hover table-condensed">
                    <thead>
                    <tr style="background-color:#EEEEEE; ">
                        <th colspan="2">商品信息</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>金额</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${CartList}" var="c">
                        <tr>
                            <td>
                                <a href="${pageContext.request.contextPath}/productDetail.action?&pid=${c.pid}">
                                    <img src="<%=basePath%>/mall/${c.cimage}" style="width: 50px ; height: 50px"/>
                                </a>
                            </td>
                            <td>
                                <a href="${pageContext.request.contextPath}/productDetail.action?pid=${c.pid}" style="color: black">${c.cname}</a>
                            </td>
                            <td>￥${c.cprice}</td>
                            <td>
                                <div class="input-group input-group-sm" style="width:95px">
                                    <input type="text" class="number form-control input-sm" value="${c.number}"
                                           readonly="readonly" style="width:42px"/>
                                </div>
                            </td>
                            <td>￥${c.total}</td>
                            <td class="action" style="padding-top: 1.1rem;">
                                <a href="${pageContext.request.contextPath}/deleteCartForCid.action?cid=${c.cid}&uid=${c.uid}">
                                    <span class="delete btn btn-xs btn-danger">删除</span>
                                </a>
                            </td>
                        </tr>
                        <c:set var="sum" value="${sum+c.total}"/>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-md-12 col-lg-12 col-sm-12">
                        <div class="cart-summary">
                            <div style="margin-left: 2rem;" class="pull-right">
                                <a href="${pageContext.request.contextPath}/confirmation.action" id="btn_settlement" type="button"
                                   class="btn btn-primary">去结算
                                </a>
                            </div>
                            <div style="margin-left: 1rem; margin-top: 0.4rem;" class="pull-right total">
                                <label>金额合计:<span id="priceTotal" class="price-total large-bold-red"
                                                  style="color:#D9534F;">${sum}</span>
                                </label>
                            </div>
                            <div style="margin-top: 4px;" class="pull-right">
                                <label>
                                    <a href="${pageContext.request.contextPath}/deleteCartForUid.action?uid=${UserData.uid}">清空购物车... </a>
                                </label>
                            </div>
                            <div style="margin-top: 4px;" class="pull-right">
                                <label>
                                    <a href="${pageContext.request.contextPath}/productList.action">继续购物</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
        <!-- 页脚部分 -->
        <jsp:include page="foot.jsp"/>
    </div>
</div>
</body>

</html>
