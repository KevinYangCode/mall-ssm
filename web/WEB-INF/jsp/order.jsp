<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/30
  Time: 17:35
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
    <title>下单成功</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="../mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="../mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="../mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="../mall/css/head.css"/>
    <link rel="stylesheet" type="text/css" href="../mall/css/foot.css"/>
    <link rel="stylesheet" type="text/css" href="../mall/css/style.css"/>
    <!-- 其它JS文件 -->
    <script type="text/javascript" src="../mall/js/details.js"></script>
</head>
<body>
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container">
    <div style="background-color:#FFFFFF">
        <jsp:include page="nav1.jsp"/>
        <!-- 订单信息 -->
        <div class="row">
            <div class="col-md-2"></div>
            <c:if test="${empty orderList}">
                <div class="col-md-8">
                    <h3>没有订单</h3>
                </div>
            </c:if>
            <c:if test="${not empty orderList}">
                <div class="col-md-8 table-responsive container-fluid">
                    <table class="table" style="border: 1px solid black">
                        <thead>
                        <tr style="background-color:#EEEEEE; ">
                            <th>订单编号</th>
                            <th>收货人</th>
                            <th>电话</th>
                            <th>收货地址</th>
                            <th>订单总价</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderList}" var="o">
                            <tr>
                                <td>${o.oid}</td>
                                <td>${o.ordername}</td>
                                <td>${o.ordertel}</td>
                                <td>${o.orderaddress}</td>
                                <td>￥${o.ordertotal}</td>
                                <td class="action" style="padding-top: 1.1rem;">
                                    <a href="${pageContext.request.contextPath}/deleteOrderForOid.action?oid=${o.oid}&uid=${o.uid}">
                                        <span class="delete btn btn-xs btn-danger">删除</span>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
            <div class="col-md-2"></div>
        </div>
        <br/>
        <br/>
        <br/>
        <!-- 页脚部分 -->
        <jsp:include page="foot.jsp"/>
    </div>
</div>
</body>
</html>

