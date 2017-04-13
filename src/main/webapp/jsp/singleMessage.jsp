<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="">
    <meta name="author" content="">

    <title>排行榜</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/bootstrap.min.css"/>" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/style.css"/> ">

    <script src="<c:url value="/webmusicpages/js/rankingList.js"/> "></script>

    <!-- Owl Carousel Assets -->
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.carousel.css"/>" rel="stylesheet">
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.theme.css"/>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/font-awesome-4.4.0/css/font-awesome.min.css"/>"
          type="text/css">

    <!--我自己的css样式页-->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/singleMessage.css"/>"/>
</head>
<body>
<header>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <strong>Welcome to 乐听乐下</strong>
                </div>
            </div>
        </div>
    </nav>

    <!--Navigation-->
    <nav id="menu" class="navbar">
        <div class="container">
            <div class="navbar-header"><span id="heading" class="visible-xs">类别</span>
                <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                        data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html"><i class="fa fa-home"></i> 下载大厅</a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-play-circle-o"></i> 乐听排行榜</a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">乐听飙升榜</a></li>
                                    <li><a href="archive.html">乐听新歌榜</a></li>
                                    <li><a href="archive.html">乐听热歌榜</a></li>
                                    <li><a href="archive.html">乐听原创歌曲榜</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-list"></i> 歌手</a>
                    </li>
                    <li><a href="archive.html"><i class="fa fa-cubes"></i> 专辑</a></li>
                    <li><a href="contact.html"><i class="fa fa-envelope"></i> 我的音乐</a></li>
                    <li class="dropdown" style="margin-left: 350px"><a href="#" class="dropdown-toggle"
                                                                       data-toggle="dropdown"><i class="fa fa-user"></i>
                        账户</a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
                                    <li><a href="archive.html">登录</a></li>
                                    <li><a href="archive.html">注册</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="header-slide">
        <div id="owl-demo" class="owl-carousel">
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/2.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/3.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/4.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/5.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/6.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/7.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/8.jpg"/>
                </div>
            </div>
            <div class="item">
                <div class="zoom-container">
                    <div class="zoom-caption">
                        <span>Music 标签</span>
                        <a href="single.html">
                            <i class="fa fa-play-circle-o fa-5x" style="color: #fff"></i>
                        </a>
                        <p>歌名</p>
                    </div>
                    <img src="images/9.jpg"/>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="container">
    <div class="row">
        <div class="col-lg-4" id="row1-col4">
            <img src="<c:url value="/webmusicpages/images/2.jpg"/>">
        </div>
        <div class="col-lg-8" id="row1-col8">
            <div class="row">
                <div>
                    <span>单曲：</span>
                    <span>歌曲名</span>
                </div>
                <div><span>歌手：</span><a href="">歌手名</a></div>
                <div><span>所属专辑：</span><a href="">专辑名</a></div>
                <div>
                    <span ><button class="btn btn-default"><a href="">播放</a></button> </span>
                    <span ><button  class="btn btn-default margin-right"><a href="">下载</a></button></span>
                    <span ><button  class="btn btn-default margin-right"><a href="">分享</a></button></span>
                    <span ><button  class="btn btn-default margin-right"><a href="">评论</a></button></span>
                </div>
            </div>
            <div class="row">
                <div>歌词</div>
            </div>
        </div>
    </div>

</div>
<%--音乐播放--%>
<div id="music">
    <audio controls="controls" style="width: 1100px;margin-left: 50px" autoplay>
        <source src="<c:url value="/webmusicpages/music/${music.musicId}.mp3"/>"/>
    </audio>
</div>
</body>
</html>
