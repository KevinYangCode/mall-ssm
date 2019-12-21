<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 17:00
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
    <title>会员登录</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/css/login.css" type="text/css"/>
    <!--其它js文件-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/login.js"></script>
</head>
<body>

<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container"
     style="width:100%;height:570px;background:#FF2C4C url('/mall/img/154477765542051523.jpg')  center no-repeat;">
    <div class="row">
        <div class="col-md-7">
        </div>
        <div class="col-md-5">
            <div style="width:440px;border:1px solid #E7E7E7;padding:20px 0 20px 30px;border-radius:5px;margin-top:80px;background:#fff;">
                <font style="color: #666;font-size: 22px;font-weight: normal;padding-right:17px;">会员登录</font>USERLOGIN
                <span style="margin-left:100px;"> <a href="${pageContext.request.contextPath}/getRegister.action">立即注册</a></span>
                <div>&nbsp;</div>
                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-6">
                            <c:if test="${empty email}">
                                <input type="email" class="form-control" id="email" placeholder="请输入邮箱" name="email" value="${email}"/>
                            </c:if>
                            <c:if test="${not empty email}">
                                <input type="email" class="form-control" id="email"name="email" value="${email}"/>
                            </c:if>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="password" placeholder="请输入密码"
                                   name="password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <span id="span01" style="font-size: 3px; color: red ;"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <input type="button" width="100" onclick="checkLogin()" value="登录" name="login" border="0"
                                   style="background: #FF5D5B; height:35px;width:100px;color:white">
                        </div>
                    </div>
                    <div class="partner">
                        <h5>其它账号</h5>
                        <div class="mr-btn-group">
                            <li><a href="#"><img src="../mall/img/QQ.png"/><span>QQ登录</span></a></li>
                            <li><a href="#"><img src="../mall/img/weibo.png"/><span>微博登录</span></a></li>
                            <li><a href="#"><img src="../mall/img/weixin.png"/><span>微信登录</span></a></li>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- 页脚部分 -->
<jsp:include page="foot.jsp"/>
</body>
</html>
