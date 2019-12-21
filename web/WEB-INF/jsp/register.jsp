<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 17:05
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>会员注册</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 表单校验的js -->
    <script type="text/javascript" src="<%=basePath%>/mall/js/register.js"></script>
</head>
<body>
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container" style="width:100%;">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8" style="background:#fff;padding:40px 80px;margin:30px;border:7px solid #ccc;">
            <span style="font-size:22px;">用户注册</span>USER REGISTER
            <form class="form-horizontal" style="margin-top:5px;" action="${pageContext.request.contextPath }/register.action" method="post" onsubmit="return checkForm()">
                <div class="form-group">
                    <label class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" onkeyup="checkEmail()" id="email" placeholder="请输入邮箱 (必填)"
                               name="email" onblur="checkEmail()" />
                    </div>
                    <span id="span02" style="font-size: 2px;color: red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">电话</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="tel" name="tel" placeholder="请输入电话 (必填)"
                               onblur="checkTel()" onkeyup="checkTel()">
                    </div>
                    <span id="span_telephone" style="font-size: 2px; color:red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="password" placeholder="请输入密码 (必填)" name="password"
                               onblur="checkPassword()" onkeyup="checkPassword()" />
                    </div>
                    <span id="span_password" style="font-size: 2px; color: red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">确认密码</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="repassword" placeholder="请输入确认密码 (必填)" name="repassword"
                               onblur="checkRePassword()" onkeyup="checkRePassword()" />
                    </div>
                    <span id="span_repassword" style="font-size: 2px; color: red;"></span>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="username" placeholder="请输入昵称" name="username" />
                    </div>
                </div>
                <div class="form-group opt">
                    <label class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-6">
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="男" /> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="女" /> 女
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">爱好</label>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="篮球" />篮球
                        </label>
                    </div>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="王者" checked />王者
                        </label>
                    </div>
                    <div class="col-sm-2 checkbox">
                        <label>
                            <input type="checkbox" name="hobby" value="吃鸡" />吃鸡
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="age" placeholder="请输入年龄" name="age" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">收货地址</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="address" placeholder="请输入地址" name="address" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="button" value="登录" onclick="window.location.href='${pageContext.request.contextPath}/getLogin.action'" />
                        <input type="submit" width="100" value="注册" name="submit" border="0" style="height:35px;width:100px; background: #A7A7A7;">
                        <input type="reset" value="重置" width="100">
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
