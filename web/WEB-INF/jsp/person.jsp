<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/25
  Time: 8:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>会员信息</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 表单校验的js -->
    <script type="text/javascript" src="<%=basePath%>/mall/js/register.js"></script>
    <script type="text/javascript" src="<%=basePath%>/mall/js/login.js"></script>
</head>
<body>
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container" style="width:100%;">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
            <input type="hidden" value="${UserData.uid}" name="uid" />
            <span style="font-size:22px;">用户信息</span>USER REGISTER
            <form class="form-horizontal" style="margin-top:5px;" id="updateData">
                <div class="form-group">
                    <label class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="email" name="email"
                               readonly="readonly" value="${UserData.email}" />
                    </div>
                    <span id="span02" style="font-size: 2px;color: red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="tel" name="tel"
                               onblur="checkTel()" onkeyup="checkTel()" value="${UserData.tel}"/>
                    </div>
                    <span id="span_telephone" style="font-size: 2px; color:red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="username" placeholder="请输入昵称" name="username"
                               value="${UserData.username}" />
                    </div>
                </div>
                <div class="form-group opt">
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-6">
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="男" <c:if test="${UserData.sex == '男'}">checked</c:if> /> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="女" <c:if test="${UserData.sex == '女'}">checked</c:if>/> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">爱好</label>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="篮球" <c:if test="${fn:contains(UserData.hobby,'篮球' )}">checked</c:if> />篮球
                        </label>
                    </div>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="王者" <c:if test="${fn:contains(UserData.hobby,'王者' )}">checked</c:if> />王者
                        </label>
                    </div>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="吃鸡" <c:if test="${fn:contains(UserData.hobby,'吃鸡' )}">checked</c:if> />吃鸡
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="age" placeholder="请输入年龄" name="age" value="${UserData.age}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">收货地址</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="address" placeholder="请输入地址" name="address" value="${UserData.address}"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="button" width="100" onclick="UpdateUserData()" value="修改" name="submit" border="0" style="height:35px;width:100px; background: #A7A7A7;">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<!-- 页脚部分 -->
<jsp:include page="foot.jsp"/>
</body>
</html>
