<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 商品列表页面 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>商品列表</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>/mall/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <!--需要引入JQuery-->
    <script type="text/javascript" src="<%=basePath%>/mall/js/jquery-1.11.0.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>/mall/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/style.css"/>
</head>
<body style=" background-color:#F2F2F2">
<!-- 引入头部 -->
<jsp:include page="head.jsp"/>
<div class="container">
    <div style="background-color:#FFFFFF">
        <jsp:include page="nav1.jsp"/>
        <!-- 商品列表 -->
        <div class="row">
            <c:forEach items="${pageBean.list}" var="p">
                <div class="list">
                    <div class="col-md-3 col-sm-3 col-xs-3">
                        <div style=" background-color:#FFFFFF">
                            <a href="${pageContext.request.contextPath}/productDetail.action?&pid=${p.pid}" title="${p.pname}">
                                <div style="text-align: center;">
                                    <img src="<%=basePath%>/mall/${p.pimage}" style="width: 200px ; height: 200px"/>
                                    <p>${p.pname}</p>
                                    <p style="color: #FF6600;">￥${p.price}　<code
                                            style="background-color:#FF6600 ;color:#FFFFFF">大聚惠</code></p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <nav aria-label="Page navigation" style="float: right;">
            <ul class="pagination">
                <c:if test="${pageBean.currentPage == 1}">
                    <li class="disabled">
                        <a aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageBean.currentPage != 1}">
                    <li>
                        <a href="${pageContext.request.contextPath }/productList.action?currentPage=${pageBean.currentPage-1}&b_id=${vo.b_id}&proName=${vo.proName}&price=${vo.price}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${pageBean.totalPage}" var="i">
                    <c:if test="${pageBean.currentPage == i}">
                        <li class="active">
                            <a>${i}</a>
                        </li>
                    </c:if>
                    <c:if test="${pageBean.currentPage != i}">
                        <li>
                            <a href="${pageContext.request.contextPath }/productList.action?currentPage=${i}&b_id=${vo.b_id}&proName=${vo.proName}&price=${vo.price}">${i}</a>
                        </li>
                    </c:if>
                </c:forEach>
                <c:if test="${pageBean.currentPage == pageBean.totalPage}">
                    <li class="disabled">
                        <a aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
                <c:if test="${pageBean.currentPage != pageBean.totalPage}">
                    <li>
                        <a href="${pageContext.request.contextPath }/productList.action?currentPage=${pageBean.currentPage+1}&b_id=${vo.b_id}&proName=${vo.proName}&price=${vo.price}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
    </div>
</div>
<!-- 页脚部分 -->
<jsp:include page="foot.jsp"/>
</body>
</html>
