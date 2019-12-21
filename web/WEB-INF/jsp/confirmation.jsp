<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/30
  Time: 17:02
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
    <title>确认订单</title>
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
        <!-- 收货信息 -->
        <h3>确认订单</h3>
        <div class="row container-fluid">
            <div class="col-md-2" style="font-size: large ">　　收货地址：</div>
            <a href="${pageContext.request.contextPath}/person.action">
                <div class="col-md-2" style="border:powderblue 2px dashed">
                    ${UserData.username}　　${UserData.tel}<br/>${UserData.address}
                </div>
            </a>
            <div class="col-md-8"></div>
        </div>
        <br/>
        <!-- 购物车 -->
        <div class="table-responsive container-fluid">
            <table class="table table-hover table-condensed">
                <thead>
                <tr style="background-color:#EEEEEE; ">
                    <th colspan="2">商品信息</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>金额</th>
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
                    </tr>
                    <c:set var="sum" value="${sum+c.total}"/>
                </c:forEach>
                </tbody>
            </table>
            <div class="row">
                <div class="col-md-12 col-lg-12 col-sm-12">
                    <div class="cart-summary">
                        <div style="margin-left: 2rem;" class="pull-right">
                            <c:if test="${empty CartList}">
                                <a href="${pageContext.request.contextPath}/addOrder.action?sum=${sum}" id="btn_settlement" type="button" disabled="disabled"
                                   class="btn btn-primary">提交订单
                                </a>
                            </c:if>
                            <c:if test="${not empty CartList}">
                                <a href="${pageContext.request.contextPath}/addOrder.action?sum=${sum}" id="btn_settlement" type="button"
                                   class="btn btn-primary">提交订单
                                </a>
                            </c:if>
                        </div>
                        <div style="margin-left: 1rem; margin-top: 0.4rem;" class="pull-right total">
                            <label>合计:<span id="priceTotal" class="price-total large-bold-red"
                                            style="color:#D9534F;">${sum}</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 页脚部分 -->
        <jsp:include page="foot.jsp"/>
    </div>
</div>
</body>

</html>
