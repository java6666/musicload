<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/4/7
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="">
    <meta name="author" content="">

    <title>我的音乐</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/bootstrap.min.css"/>"  type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/style.css"/>">
    <%--引入本业content的样式--%>
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/userMusic.css"/>">

    <!-- Owl Carousel Assets -->
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.carousel.css"/>" rel="stylesheet">
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.theme.css"/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/font-awesome-4.4.0/css/font-awesome.min.css"/>"  type="text/css">

    <!-- jQuery and Modernizr-->
    <script src="<c:url value="/webmusicpages/js/jquery-2.1.1.js"/>"></script>

    <!-- Core JavaScript Files -->
    <script src="<c:url value="/webmusicpages/js/bootstrap.min.js"/>"></script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<header>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <strong>Welcome to KOOLTUBE!</strong>
                </div>
            </div>
        </div>
    </nav>

    <!--Navigation-->
    <nav id="menu" class="navbar" style="background-color: #3a3a3a">
        <div class="container">
            <div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse" >
                <ul class="nav navbar-nav">
                    <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-play-circle-o"></i> Video</a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">Text 201</a></li>
                                    <li><a href="archive.html">Text 202</a></li>
                                    <li><a href="archive.html">Text 203</a></li>
                                    <li><a href="archive.html">Text 204</a></li>
                                    <li><a href="archive.html">Text 205</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-list"></i> Category</a>
                        <div class="dropdown-menu" style="margin-left: -203.625px;">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">Text 301</a></li>
                                    <li><a href="archive.html">Text 302</a></li>
                                    <li><a href="archive.html">Text 303</a></li>
                                    <li><a href="archive.html">Text 304</a></li>
                                    <li><a href="archive.html">Text 305</a></li>
                                </ul>
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">Text 306</a></li>
                                    <li><a href="archive.html">Text 307</a></li>
                                    <li><a href="archive.html">Text 308</a></li>
                                    <li><a href="archive.html">Text 309</a></li>
                                    <li><a href="archive.html">Text 310</a></li>
                                </ul>
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">Text 311</a></li>
                                    <li><a href="archive.html">Text 312</a></li>
                                    <li><a href="archive.html#">Text 313</a></li>
                                    <li><a href="archive.html#">Text 314</a></li>
                                    <li><a href="archive.html">Text 315</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="archive.html"><i class="fa fa-cubes"></i> Blocks</a></li>
                    <li><a href="/userMusic"><i class="fa fa-envelope"></i> 我的音乐</a></li>
                    <li style="margin-left: 400px" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                            ${sessionScope.get("user_name")}
                        </a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="/userHome?userName=${sessionScope.get("user_name")}">我的主页</a></li>
                                    <li><a href="/loginOut">退出</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<!-- /////////////////////////////////////////Content -->
<div id="page-content" class="contact-page">
    <div class="container-fluid" id="container">
        <div id="row1" class="row">
            <div id="col1" class="col-md-1"></div>

            <%--导航栏--%>
            <div id="col2" class="col-md-2">
                <div class="row" style="height: 30px"></div>
                <%--导航表格--%>
                <table id="table1" class="table table-hover">
                    <tr>
                        <td style="border-top: none" onclick="showIContent(1)">我的歌手(${userSingers.size()})</td>
                    </tr>
                    <tr>
                        <td style="border-top: none" onclick="showCreateBar(this,'createForm')">
                            创建的歌单(10)
                        </td>
                    </tr>
                    <%--如果有显示--%>
                    <%--<c:if test="">--%>
                    <tr class="createForm" style="display: none">
                            <td style="border-top: none" onclick="showIContent(2)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                歌单名1
                            </td>
                    </tr>
                    <%--</c:if>--%>
                    <tr>
                        <td style="border-top: none" onclick="showCreateBar(this,'collectForm')">
                            收藏的歌单(10)
                        </td>
                    </tr>
                   <%-- <c:if test="">--%>
                        <tr class="collectForm" style="display: none">
                            <td style="border-top: none" onclick="showIContent(3)">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                歌单名2
                            </td>
                        </tr>
                    <%--</c:if>--%>
                </table>
            </div>

            <%--内容块--%>
            <div id="col3" class="col-md-7" style="position: relative">

                <%--内容块儿1--%>
                <div id="content-1" style="display: block">
                    <div class="content-x-top">
                        <h3 class="content-x-top-h1">我的歌手(${userSingers.size()})</h3>
                    </div>
                    <table class="table">
                        <c:forEach items="${userSingers}" var="item">
                            <tr style="border-bottom: solid gainsboro 1px">
                                <td style="width:100px;height:100px">
                                    <img src="<c:url value="/webmusicpages/images/singerImages/${item.singerId}.jpg"/>" style="height: 100px;width: 100px"/>
                                </td>
                                <td style="width:500px;height:100px">
                                    <h6>${item.singerName}</h6>
                                    <p>28个专辑</p>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <div id="content-2" style="display: none">
                    <div class="content-x-top" style="border-bottom: none">
                        <table class="table">
                            <tr>
                                <td style="height: 150px;width: 150px">
                                    <img src="<c:url value="/webmusicpages/images/singerImages/6.jpg"/>" style="height: 150px;width: 150px">
                                </td>
                                <td style="height: 150px;width: 450px">
                                    <h6 style="font-weight: lighter"><span style="color: red">◆</span>歌单名1</h6>
                                    <p>
                                        <span style="color: #3276b1;font-size: 16px">
                                            &nbsp;&nbsp;&nbsp;创建日期：
                                        </span>
                                        date&nbsp;创建
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;
                                        <button class="btn btn-default">
                                            <a>播放</a>
                                        </button>
                                        <button class="btn btn-default">
                                            <a>下载</a>
                                        </button>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div class="page-header" style="margin-bottom: 0;padding-bottom: 0;font-weight: lighter">
                            <h6>
                                歌曲列表
                                <small>歌曲数量</small>
                            </h6>
                        </div>
                        <table class="table table-striped" style="border-top: solid red 2px">
                            <tr style="background-color: #f5f5f5">
                                <td style="border: solid 1px gainsboro;font-size: 14px">
                                    歌曲名
                                </td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">时长</td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">歌手</td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">专辑</td>
                            </tr>
                            <tr>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="content-3" style="display: none">
                    <div class="content-x-top" style="border-bottom: none">
                        <table class="table">
                            <tr>
                                <td style="height: 150px;width: 150px">
                                    <img src="<c:url value="/webmusicpages/images/singerImages/6.jpg"/>" style="height: 150px;width: 150px">
                                </td>
                                <td style="height: 150px;width: 450px">
                                    <h6 style="font-weight: lighter"><span style="color: red">◆</span>歌单名</h6>
                                    <p>
                                        <span style="color: #3276b1;font-size: 16px">
                                            &nbsp;&nbsp;&nbsp;创建日期：
                                        </span>
                                        date&nbsp;创建
                                    </p>
                                    <p>
                                        &nbsp;&nbsp;
                                        <button class="btn btn-default">
                                            <a>播放</a>
                                        </button>
                                        <button class="btn btn-default">
                                            <a>下载</a>
                                        </button>
                                    </p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div class="page-header" style="margin-bottom: 0;padding-bottom: 0;font-weight: lighter">
                            <h6>
                                歌曲列表
                                <small>歌曲数量</small>
                            </h6>
                        </div>
                        <table class="table table-striped" style="border-top: solid red 2px">
                            <tr style="background-color: #f5f5f5">
                                <td style="border: solid 1px gainsboro;font-size: 14px">
                                    歌曲名
                                </td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">时长</td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">歌手</td>
                                <td style="border: solid 1px gainsboro;font-size: 14px">专辑</td>
                            </tr>
                            <tr>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                                <td style="font-size: 14px">1</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div id="col4" class="col-md-2"></div>
        </div>
    </div>
</div>
</body>
<script>
    function showCreateBar(mark,className) {
        var createForms = document.getElementsByClassName(className);
        for (var i=0;i<=createForms.length;i++){
            if(createForms[i].style.display=="block"){
                createForms[i].style.display="none";
                mark.style.color="black";
            }else {
                createForms[i].style.display="block";
                mark.style.color="gray";
            }
        }
    }
    function showIContent(index) {
        for (var i=1;i<=3;i++){
         document.getElementById("content-"+i).style.display=i==index? "block":"none";
        }
    }
</script>
</html>
