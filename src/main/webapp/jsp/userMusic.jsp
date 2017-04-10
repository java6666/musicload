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
            <div class="collapse navbar-collapse navbar-ex1-collapse">
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
    <div class="container">
        <div class="row">

            <!--显示各歌单-->
            <div class="col-md-offset-1 col-md-2" style="border: solid 1px whitesmoke">
                <div>
                    <p>▼创建歌单(?)<button type="button">＋</button></p>
                </div>
                <hr/>
                <div>
                    <p>▼创建歌单(?)<button type="button">＋</button></p>
                </div>
            </div>
            <!--显示歌单详细信息-->
            <div id="main-content" class="col-md-6">
                <div style="height: 50px">
                    歌单图片、歌单名、固定高度
                </div>
                <hr/>
                <div>
                    歌曲列表，上线加粗
                    <table class="table">
                        <tr><th></th><th>歌曲标题</th><th>时长</th><th>歌手</th><th>专辑</th></tr>
                        <tr><td>1</td><td>歌曲标题</td><td>时长</td><td>歌手</td><td>专辑</td></tr>
                    </table>
                </div>
            </div>
            <div id="sidebar" class="col-md-3">
                <!---- Start Widget ---->
                <div class="widget wid-follow">
                    <div class="heading"><h4><i class="fa fa-users"></i> Follow Us</h4></div>
                    <div class="content">
                        <ul class="list-inline">
                            <li>
                                <a href="facebook.com/">
                                    <div class="box-facebook">
                                        <span class="fa fa-facebook fa-2x icon"></span>
                                        <span>1250</span>
                                        <span>Fans</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="facebook.com/">
                                    <div class="box-twitter">
                                        <span class="fa fa-twitter fa-2x icon"></span>
                                        <span>1250</span>
                                        <span>Fans</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="facebook.com/">
                                    <div class="box-google">
                                        <span class="fa fa-google-plus fa-2x icon"></span>
                                        <span>1250</span>
                                        <span>Fans</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <img src="images/banner.jpg" />
                    </div>
                    <div class="line"></div>
                </div>
                <!---- Start Widget ---->
                <div class="widget wid-post">
                    <div class="heading"><h4><i class="fa fa-globe"></i> Category</h4></div>
                    <div class="content">
                        <div class="post wrap-vid">
                            <div class="zoom-container">
                                <div class="zoom-caption">
                                    <span>Video's Tag</span>
                                    <a href="single.html">
                                        <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                    </a>
                                    <p>Video's Name</p>
                                </div>
                                <img src="images/7.jpg" />
                            </div>
                            <div class="wrapper">
                                <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                <div class="info">
                                    <h6>By <a href="#">Kelvin</a></h6>
                                    <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                    <span><i class="fa fa-heart"></i>1,200</span>
                                </div>
                            </div>
                        </div>
                        <div class="post wrap-vid">
                            <div class="zoom-container">
                                <div class="zoom-caption">
                                    <span>Video's Tag</span>
                                    <a href="single.html">
                                        <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                    </a>
                                    <p>Video's Name</p>
                                </div>
                                <img src="images/8.jpg" />
                            </div>
                            <div class="wrapper">
                                <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                <div class="info">
                                    <h6>By <a href="#">Kelvin</a></h6>
                                    <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                    <span><i class="fa fa-heart"></i>1,200</span>
                                </div>
                            </div>
                        </div>
                        <div class="post wrap-vid">
                            <div class="zoom-container">
                                <div class="zoom-caption">
                                    <span>Video's Tag</span>
                                    <a href="single.html">
                                        <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                                    </a>
                                    <p>Video's Name</p>
                                </div>
                                <img src="images/9.jpg" />
                            </div>
                            <div class="wrapper">
                                <h5 class="vid-name"><a href="#">Video's Name</a></h5>
                                <div class="info">
                                    <h6>By <a href="#">Kelvin</a></h6>
                                    <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                    <span><i class="fa fa-heart"></i>1,200</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
