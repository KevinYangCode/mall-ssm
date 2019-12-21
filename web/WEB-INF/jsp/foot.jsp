<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 16:55
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
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/foot.css" />
</head>
<body>
<!-- 页脚部分 -->
<div class="container-fluid">
    <div class="foot">
        <div>
            <ul class="list-inline">
                <li><a href="#">关于我们</a></li>
                <li><a href="#">联系我们</a></li>
                <li><a href="#">招贤纳士</a></li>
                <li><a href="#">法律声明</a></li>
                <li><a href="#">友情链接</a></li>
                <li><a href="#">支付方式</a></li>
                <li><a href="#">配送方式</a></li>
                <li><a href="#">服务声明</a></li>
                <li><a href="#">广告声明</a></li>
            </ul>
        </div>
        <div>
            Copyright &copy; 2018-2019 Kevin商城 版权所有
        </div>
    </div>
</div>
</body>
</html>
