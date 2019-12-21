<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/25
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title></title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/style.css"/>
</head>
<body>
<!-- logo搜索 -->
<div class="row container-fluid">
    <div class="" style="float: left;">
        <div style="width: 190px; height: 110px;"><a href="${pageContext.request.contextPath }/main.action"><img
                src="<%=basePath%>/mall/img/logo.png" class="img-responsive"/></a></div>
    </div>
    <div class="" style="float: left;">
        <div><img src="<%=basePath%>/mall/img/123.gif"/></div>
    </div>
    <div class="book" style="float: left;">
        <form action="${pageContext.request.contextPath }/productList.action" method="post">
            <input class="text" type="text" id="proName" name="proName" placeholder="搜索"/>
            <select id="price" name="price" class="text2">
                <option value="">--请选择价格范围--
                <option value="1">低于2000
                <option value="2">2000-3000
                <option value="3">3000-4000
                <option value="4">4000-5000
                <option value="5">超过5000
            </select>
            <input class="SE" type="submit" value="搜索"/>
        </form>
    </div>
</div>
<!-- 导航条 -->
<div class="container-fluid">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand">
                    <div class="nav navbar-nav" style="margin-left: -15px; margin-top: -15px;">
                        <li style="background: #A7A7A7; width: 180px; text-align: center;">
                            <a href="${pageContext.request.contextPath}/productList.action" class="dropdown-toggle"
                               role="button">全部商品
                            </a>
                        </li>
                    </div>
                </div>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="${pageContext.request.contextPath}/productList.action?b_id=1">Apple</a></li>
                    <li><a href="${pageContext.request.contextPath}/productList.action?b_id=2">华为(honor)</a></li>
                    <li><a href="${pageContext.request.contextPath}/productList.action?b_id=3">OPPO</a></li>
                    <li><a href="${pageContext.request.contextPath}/productList.action?b_id=4">Xiaomi/小米</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
</body>
</html>
