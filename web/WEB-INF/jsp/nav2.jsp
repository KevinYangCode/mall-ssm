<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2018/12/24
  Time: 17:20
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
    <title></title>
    <!-- 其它CSS文件 -->
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/mall/css/hmstyle.css" />
</head>
<body>
<!--侧边导航 -->
<script>
    //鼠标滑出事件
    function mouseOver(obj) {
        obj.className = "appliance js_toggle relative hover"; //设置当前事件对象样式
        var menu = obj.childNodes; //寻找该事件子节点（商品子类别）
        menu[3].style.display = 'block'; //设置子节点显示
    }
    //鼠标滑入事件
    function mouseOut(obj) {
        obj.className = "appliance js_toggle relative"; //设置当前事件对象样式
        var menu = obj.childNodes; //寻找该事件子节点（商品子类别）
        menu[3].style.display = 'none'; //设置子节点隐藏
    }
</script>
<div id="navi" class="navfull">
    <div class="category-content" id="guide_2">
        <div class="category">
            <ul class="category-list" id="js_climit_li">
                <li class="appliance js_toggle relative " onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="Apple">Apple</a></h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="手机系列">手机系列</span></dt>
                                            <dd><a title="iPhone XS Max" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone XS Max</span></a></dd>
                                            <dd><a title="iPhone X" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone X</span></a></dd>
                                            <dd><a title="iPhone 8" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone 8</span></a></dd>
                                            <dd><a title="iPhone 6s Plus" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone 6s Plus</span></a></dd>
                                            <dd><a title="iPhone XS" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone XS</span></a></dd>
                                            <dd><a title="iPhone 8P" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone 8P</span></a></dd>
                                            <dd><a title="iPhone 7" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone 7</span></a></dd>
                                            <dd><a title="iPhone 8 Plus" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>iPhone 8 Plus</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="电脑系列">电脑系列</span></dt>
                                            <dd><a title="Apple MacBook Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?&pid=1"><span>Apple MacBook Air 13.3英寸</span></a></dd>
                                            <dd><a title="Apple MacBook Pro 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?&pid=1"><span>Apple MacBook Pro 13.3英寸</span></a></dd>
                                            <dd><a title="Apple MacBook Pro 15.4英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=1"><span>Apple MacBook Pro 15.4英寸</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="华为(honor)">华为(honor)</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="华为系列">华为系列</span></dt>
                                            <dd><a title="华为nova4" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为nova4</span></a></dd>
                                            <dd><a title="华为Mate 20" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为Mate 20</span></a></dd>
                                            <dd><a title="华为Mate 20 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为Mate 20 Pro</span></a></dd>
                                            <dd><a title="华为Mate 20 X" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为Mate 20 X</span></a></dd>
                                            <dd><a title="华为畅享9" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为畅享9</span></a></dd>
                                            <dd><a title="华为麦芒7" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>华为麦芒7</span></a></dd>

                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="荣耀(honor)系列">荣耀(honor)系列</span></dt>
                                            <dd><a title="荣耀8X" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀8X</span></a></dd>
                                            <dd><a title="荣耀(honor) 10" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀(honor) 10</span></a></dd>
                                            <dd><a title="荣耀 8X Max" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀 8X Max</span></a></dd>
                                            <dd><a title="荣耀畅玩8C" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀畅玩8C</span></a></dd>
                                            <dd><a title="荣耀Note10" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀Note10</span></a></dd>
                                            <dd><a title="荣耀(honor) 9i" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀(honor) 9i</span></a></dd>
                                            <dd><a title="荣耀 Magic2" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀 Magic2</span></a></dd>
                                            <dd><a title="荣耀(honor) Play" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>荣耀(honor) Play</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="智能设备">智能设备</span></dt>
                                            <dd><a title="智能手环 B5 运动版" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>智能手环 B5 运动版</span></a></dd>
                                            <dd><a title="儿童手表3PRO" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>儿童手表3PRO</span></a></dd>
                                            <dd><a title="FreeBuds2 CM-H2S 华为无线蓝牙耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>FreeBuds2 CM-H2S 华为无线蓝牙耳机</span></a></dd>
                                            <dd><a title="运动手环 B19标准版" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>运动手环 B19标准版</span></a></dd>
                                            <dd><a title="AW70手环3e" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>AW70手环3e</span></a></dd>
                                            <dd><a title="其他配件" href="${pageContext.request.contextPath}/productDetail.action?pid=12"><span>其他配件</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="OPPO">OPPO</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="手机">手机</span></dt>
                                            <dd><a title="OPPO K1" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO K1</span></a></dd>
                                            <dd><a title="OPPO R17" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO R17</span></a></dd>
                                            <dd><a title="OPPO A5" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO A5</span></a></dd>
                                            <dd><a title="OPPO R17 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO R17 Pro</span></a></dd>
                                            <dd><a title="OPPO Find X" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO Find X</span></a></dd>
                                            <dd><a title="OPPO R15X" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO R15X</span></a></dd>
                                            <dd><a title="OPPO A7X" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO A7X</span></a></dd>
                                            <dd><a title="OPPO R11S" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO R11S</span></a></dd>
                                            <dd><a title="OPPO R11" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO R11</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="配件">配件</span></dt>
                                            <dd><a title="闪充充电器套装AK779" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>闪充充电器套装AK779</span></a></dd>
                                            <dd><a title="有线耳机 MH133" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>有线耳机 MH133</span></a></dd>
                                            <dd><a title="原装耳机 MH135" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>原装耳机 MH135 </span></a></dd>
                                            <dd><a title="OPPO 自拍杆" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO 自拍杆</span></a></dd>
                                            <dd><a title="原装耳机 MH130" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>原装耳机 MH130</span></a></dd>
                                            <dd><a title="PPO O-Free 蓝牙无线耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=29"><span>OPPO O-Free 蓝牙无线耳机</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target="_blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="Xiaomi/小米">Xiaomi/小米</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="小米系列">小米系列</span></dt>
                                            <dd><a title="小米8青春版" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米8青春版</span></a></dd>
                                            <dd><a title="小米8" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米8</span></a></dd>
                                            <dd><a title="小米8SE" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米8SE</span></a></dd>
                                            <dd><a title="小米Max3" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米Max3</span></a></dd>
                                            <dd><a title="小米Mix3" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米Mix3</span></a></dd>
                                            <dd><a title="小米Mix2S" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米Mix2S</span></a></dd>
                                            <dd><a title="小米max2" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米max2</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="红米系列">红米系列</span></dt>
                                            <dd><a title="红米6A" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米6A</span></a></dd>
                                            <dd><a title="红米6 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米6 Pro</span></a></dd>
                                            <dd><a title="红米Note5" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米Note5</span></a></dd>
                                            <dd><a title="红米6" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米6</span></a></dd>
                                            <dd><a title="红米S2" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米S2</span></a></dd>
                                            <dd><a title="红米Note 5A" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>红米Note 5A</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="电脑系列">电脑系列</span></dt>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                            <dd><a title="小米(MI)Pro 15.6英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米(MI)Pro 15.6英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 12.5英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米(MI)Air 12.5英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=18"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="华为(honor)">华为(honor)</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="华为系列">华为系列</span></dt>
                                            <dd><a title="华为nova4" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为nova4</span></a></dd>
                                            <dd><a title="华为Mate 20" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为Mate 20</span></a></dd>
                                            <dd><a title="华为Mate 20 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为Mate 20 Pro</span></a></dd>
                                            <dd><a title="华为Mate 20 X" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为Mate 20 X</span></a></dd>
                                            <dd><a title="华为畅享9" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为畅享9</span></a></dd>
                                            <dd><a title="华为麦芒7" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>华为麦芒7</span></a></dd>

                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="荣耀(honor)系列">荣耀(honor)系列</span></dt>
                                            <dd><a title="荣耀8X" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀8X</span></a></dd>
                                            <dd><a title="荣耀(honor) 10" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀(honor) 10</span></a></dd>
                                            <dd><a title="荣耀 8X Max" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀 8X Max</span></a></dd>
                                            <dd><a title="荣耀畅玩8C" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀畅玩8C</span></a></dd>
                                            <dd><a title="荣耀Note10" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀Note10</span></a></dd>
                                            <dd><a title="荣耀(honor) 9i" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀(honor) 9i</span></a></dd>
                                            <dd><a title="荣耀 Magic2" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀 Magic2</span></a></dd>
                                            <dd><a title="荣耀(honor) Play" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>荣耀(honor) Play</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="智能设备">智能设备</span></dt>
                                            <dd><a title="智能手环 B5 运动版" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>智能手环 B5 运动版</span></a></dd>
                                            <dd><a title="儿童手表3PRO" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>儿童手表3PRO</span></a></dd>
                                            <dd><a title="FreeBuds2 CM-H2S 华为无线蓝牙耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>FreeBuds2 CM-H2S 华为无线蓝牙耳机</span></a></dd>
                                            <dd><a title="运动手环 B19标准版" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>运动手环 B19标准版</span></a></dd>
                                            <dd><a title="AW70手环3e" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>AW70手环3e</span></a></dd>
                                            <dd><a title="其他配件" href="${pageContext.request.contextPath}/productDetail.action?pid=15"><span>其他配件</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="OPPO">OPPO</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="手机">手机</span></dt>
                                            <dd><a title="OPPO K1" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO K1</span></a></dd>
                                            <dd><a title="OPPO R17" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO R17</span></a></dd>
                                            <dd><a title="OPPO A5" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO A5</span></a></dd>
                                            <dd><a title="OPPO R17 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO R17 Pro</span></a></dd>
                                            <dd><a title="OPPO Find X" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO Find X</span></a></dd>
                                            <dd><a title="OPPO R15X" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO R15X</span></a></dd>
                                            <dd><a title="OPPO A7X" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO A7X</span></a></dd>
                                            <dd><a title="OPPO R11S" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO R11S</span></a></dd>
                                            <dd><a title="OPPO R11" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO R11</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="配件">配件</span></dt>
                                            <dd><a title="闪充充电器套装AK779" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>闪充充电器套装AK779</span></a></dd>
                                            <dd><a title="有线耳机 MH133" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>有线耳机 MH133</span></a></dd>
                                            <dd><a title="原装耳机 MH135" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>原装耳机 MH135 </span></a></dd>
                                            <dd><a title="OPPO 自拍杆" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO 自拍杆</span></a></dd>
                                            <dd><a title="原装耳机 MH130" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>原装耳机 MH130</span></a></dd>
                                            <dd><a title="PPO O-Free 蓝牙无线耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=24"><span>OPPO O-Free 蓝牙无线耳机</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target="_blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="Xiaomi/小米">Xiaomi/小米</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="小米系列">小米系列</span></dt>
                                            <dd><a title="小米8青春版" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米8青春版</span></a></dd>
                                            <dd><a title="小米8" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米8</span></a></dd>
                                            <dd><a title="小米8SE" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米8SE</span></a></dd>
                                            <dd><a title="小米Max3" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米Max3</span></a></dd>
                                            <dd><a title="小米Mix3" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米Mix3</span></a></dd>
                                            <dd><a title="小米Mix2S" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米Mix2S</span></a></dd>
                                            <dd><a title="小米max2" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米max2</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="红米系列">红米系列</span></dt>
                                            <dd><a title="红米6A" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米6A</span></a></dd>
                                            <dd><a title="红米6 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米6 Pro</span></a></dd>
                                            <dd><a title="红米Note5" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米Note5</span></a></dd>
                                            <dd><a title="红米6" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米6</span></a></dd>
                                            <dd><a title="红米S2" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米S2</span></a></dd>
                                            <dd><a title="红米Note 5A" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>红米Note 5A</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="电脑系列">电脑系列</span></dt>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                            <dd><a title="小米(MI)Pro 15.6英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米(MI)Pro 15.6英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 12.5英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米(MI)Air 12.5英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=27"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="华为(honor)">华为(honor)</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="华为系列">华为系列</span></dt>
                                            <dd><a title="华为nova4" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为nova4</span></a></dd>
                                            <dd><a title="华为Mate 20" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为Mate 20</span></a></dd>
                                            <dd><a title="华为Mate 20 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为Mate 20 Pro</span></a></dd>
                                            <dd><a title="华为Mate 20 X" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为Mate 20 X</span></a></dd>
                                            <dd><a title="华为畅享9" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为畅享9</span></a></dd>
                                            <dd><a title="华为麦芒7" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>华为麦芒7</span></a></dd>

                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="荣耀(honor)系列">荣耀(honor)系列</span></dt>
                                            <dd><a title="荣耀8X" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀8X</span></a></dd>
                                            <dd><a title="荣耀(honor) 10" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀(honor) 10</span></a></dd>
                                            <dd><a title="荣耀 8X Max" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀 8X Max</span></a></dd>
                                            <dd><a title="荣耀畅玩8C" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀畅玩8C</span></a></dd>
                                            <dd><a title="荣耀Note10" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀Note10</span></a></dd>
                                            <dd><a title="荣耀(honor) 9i" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀(honor) 9i</span></a></dd>
                                            <dd><a title="荣耀 Magic2" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀 Magic2</span></a></dd>
                                            <dd><a title="荣耀(honor) Play" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>荣耀(honor) Play</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="智能设备">智能设备</span></dt>
                                            <dd><a title="智能手环 B5 运动版" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>智能手环 B5 运动版</span></a></dd>
                                            <dd><a title="儿童手表3PRO" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>儿童手表3PRO</span></a></dd>
                                            <dd><a title="FreeBuds2 CM-H2S 华为无线蓝牙耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>FreeBuds2 CM-H2S 华为无线蓝牙耳机</span></a></dd>
                                            <dd><a title="运动手环 B19标准版" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>运动手环 B19标准版</span></a></dd>
                                            <dd><a title="AW70手环3e" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>AW70手环3e</span></a></dd>
                                            <dd><a title="其他配件" href="${pageContext.request.contextPath}/productDetail.action?pid=20"><span>其他配件</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="OPPO">OPPO</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="手机">手机</span></dt>
                                            <dd><a title="OPPO K1" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO K1</span></a></dd>
                                            <dd><a title="OPPO R17" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO R17</span></a></dd>
                                            <dd><a title="OPPO A5" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO A5</span></a></dd>
                                            <dd><a title="OPPO R17 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO R17 Pro</span></a></dd>
                                            <dd><a title="OPPO Find X" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO Find X</span></a></dd>
                                            <dd><a title="OPPO R15X" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO R15X</span></a></dd>
                                            <dd><a title="OPPO A7X" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO A7X</span></a></dd>
                                            <dd><a title="OPPO R11S" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO R11S</span></a></dd>
                                            <dd><a title="OPPO R11" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO R11</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="配件">配件</span></dt>
                                            <dd><a title="闪充充电器套装AK779" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>闪充充电器套装AK779</span></a></dd>
                                            <dd><a title="有线耳机 MH133" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>有线耳机 MH133</span></a></dd>
                                            <dd><a title="原装耳机 MH135" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>原装耳机 MH135 </span></a></dd>
                                            <dd><a title="OPPO 自拍杆" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO 自拍杆</span></a></dd>
                                            <dd><a title="原装耳机 MH130" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>原装耳机 MH130</span></a></dd>
                                            <dd><a title="PPO O-Free 蓝牙无线耳机" href="${pageContext.request.contextPath}/productDetail.action?pid=32"><span>OPPO O-Free 蓝牙无线耳机</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target="_blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
                <li class="appliance js_toggle relative" onmouseover="mouseOver(this)" onmouseout="mouseOut(this)">
                    <div class="category-info">
                        <h3 class="category-name b-category-name"><a class="ml-22" title="Xiaomi/小米">Xiaomi/小米</a>
                        </h3>
                        <em>&gt;</em>
                    </div>
                    <div class="menu-item menu-in top">
                        <div class="area-in">
                            <div class="area-bg">
                                <div class="menu-srot">
                                    <div class="sort-side">
                                        <dl class="dl-sort">
                                            <dt><span title="小米系列">小米系列</span></dt>
                                            <dd><a title="小米8青春版" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米8青春版</span></a></dd>
                                            <dd><a title="小米8" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米8</span></a></dd>
                                            <dd><a title="小米8SE" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米8SE</span></a></dd>
                                            <dd><a title="小米Max3" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米Max3</span></a></dd>
                                            <dd><a title="小米Mix3" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米Mix3</span></a></dd>
                                            <dd><a title="小米Mix2S" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米Mix2S</span></a></dd>
                                            <dd><a title="小米max2" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米max2</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="红米系列">红米系列</span></dt>
                                            <dd><a title="红米6A" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米6A</span></a></dd>
                                            <dd><a title="红米6 Pro" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米6 Pro</span></a></dd>
                                            <dd><a title="红米Note5" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米Note5</span></a></dd>
                                            <dd><a title="红米6" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米6</span></a></dd>
                                            <dd><a title="红米S2" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米S2</span></a></dd>
                                            <dd><a title="红米Note 5A" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>红米Note 5A</span></a></dd>
                                        </dl>
                                        <dl class="dl-sort">
                                            <dt><span title="电脑系列">电脑系列</span></dt>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                            <dd><a title="小米(MI)Pro 15.6英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米(MI)Pro 15.6英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 12.5英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米(MI)Air 12.5英寸</span></a></dd>
                                            <dd><a title="小米(MI)Air 13.3英寸" href="${pageContext.request.contextPath}/productDetail.action?pid=31"><span>小米(MI)Air 13.3英寸</span></a></dd>
                                        </dl>
                                    </div>
                                    <div class="brand-side">
                                        <dl class="dl-sort">
                                            <dt><span>实力商家</span></dt>
                                            <dd><a rel="nofollow" title="苏宁" target=" _blank" href="#" rel="nofollow"><span class="red">苏宁</span></a></dd>
                                            <dd><a rel="nofollow" title="京东" target="_blank" href="#" rel="nofollow"><span>京东</span></a></dd>
                                            <dd><a rel="nofollow" title="淘宝" target="_blank" href="#" rel="nofollow"><span class="red">淘宝</span></a></dd>
                                            <dd><a rel="nofollow" title="国美" target="_blank" href="#" rel="nofollow"><span>国美</span></a></dd>
                                            <dd><a rel="nofollow" title="亚马逊" target="_blank" href="#" rel="nofollow"><span class="red">亚马逊</span></a></dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <b class="arrow"></b>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
