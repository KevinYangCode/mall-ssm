<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title></title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/head.css"/>

</head>
<body>

<!-- 登录注册条 -->
<div class="container-fluid" id="top-input">
    <div class="container">
        <div class="head-a">
            <ol class="list-inline" style="padding-top: 10px;">
                <li>
                    <a href="${pageContext.request.contextPath}/main.action">商城首页</a>
                </li>
                <c:if test="${empty UserData}">
                    <li><a href="${pageContext.request.contextPath}/getLogin.action" target="_top" style="color: red;">登录</a></li>
                    <li>
                        <a href="${pageContext.request.contextPath}/getRegister.action" target="_top" style="color: red;">注册</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/getLogin.action" target="_top">购物车</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/getLogin.action" target="_top">订单</a>
                    </li>
                </c:if>
                <c:if test="${not empty UserData}">
                    <li>
                        <a href="${pageContext.request.contextPath}/person.action" target="_top">
                            <font color="red">欢迎你，${UserData.username}</font>
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/exit.action" target="_top">[退出]</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/cartList.action?&uid=${UserData.uid}" target="_top">购物车</a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/orderList.action?&uid=${UserData.uid}" target="_top">订单</a>
                    </li>
                </c:if>
            </ol>
        </div>
    </div>
</div>
</body>
</html>
