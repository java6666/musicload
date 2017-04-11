<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/4/10
  Time: 18:33
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

    <title>用户的主页</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/bootstrap.min.css"/>"  type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/style.css"/>">

    <!-- Owl Carousel Assets -->
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.carousel.css"/>" rel="stylesheet">
    <link href="<c:url value="/webmusicpages/owl-carousel/owl.theme.css"/>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/font-awesome-4.4.0/css/font-awesome.min.css"/>"  type="text/css">

    <!--我自己的css样式页-->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/userHome.css"/>" type="text/css">
</head>
<body>
<header>
    <!--Top-->
    <nav id="top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <strong>Welcome to 乐听！</strong>
                </div>
                <div class="col-md-6 col-sm-6">
                    <ul class="list-inline top-link link">
                        <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="contact.html"><i class="fa fa-comments"></i> Contact</a></li>
                        <li><a href="#"><i class="fa fa-question-circle"></i> FAQ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!--Navigation-->
    <!--更改头部颜色-->
    <nav id="menu" class="navbar">
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
                    <li><a href="contact.html"><i class="fa fa-envelope"></i> 我的音乐</a></li>
                    <li id="user" style="margin-left: 520px" class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>
                            <c:if test="${sessionScope.get('user_name')==null}">
                                Account
                            </c:if>
                            <c:if test="${sessionScope.get('user_name')!=null}">
                                ${sessionScope.get("user_name")}
                            </c:if>
                        </a>
                        <div class="dropdown-menu">
                            <div class="dropdown-inner">
                                <ul class="list-unstyled">
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
<div class="container-fluid">
    <div id="row-1" class="row"></div>
    <div id="row-2" class="row">
        <div class="col-md-2">
        </div>

        <div class="col-md-8">
            <!--用户信息显示-->
            <div id="upper">
                <div>
                    <div id="user-head">
                    <img src="<c:url value="/webmusicpages/images/tomHead.png"/>"/>
                    </div>
                </div>
                <div id="user-head-brother-1">
                    <div class="userInfo">
                        <h4>
                            ${sessionScope.get("user_name")}
                        </h4>
                    </div>
                    <div class="userInfo">
                        <p><em>level：${user.level}</em></p>
                    </div>
                    <div class="userInfo">
                        <p><em>gender:
                            <c:if test="${user.gender}">male</c:if>
                            <c:if test="${!user.gender}">female</c:if>
                        </em></p>
                    </div>
                </div>
                <div id="user-head-brother-2">
                    <div style="margin-left: 25px;margin-top: 10px">
                        <form action="/fileUpLoad" method="post" enctype="multipart/form-data">
                            <input type="file" name="upload"/>&nbsp;&nbsp;
                            <input class="btn btn-primary" type="submit" value="保存" style="margin-top: 30px">
                        </form>
                    </div>
                </div>
            </div>
            <%----%>
            <div>
                <form action="/userEdit" method="post" class="form" style="margin-top: 200px">
                    <div class="form-group">
                        <label for="nan">性别</label>
                        <input id="nan" type="radio" name="gender" value="true"
                                <c:if test="${user.gender==true}">checked="checked"</c:if>/>男
                        <label for="nv"></label>
                        <input id="nv" type="radio" name="gender" value="false"
                               <c:if test="${user.gender==false}">checked="checked"</c:if>/>女
                    </div>
                    <div class="form-group">
                        <label for="signature">个性签名</label>
                        <input type="text" id="signature" name="signature" style="border: solid 1px gray"
                               value="${user.signature}"/>
                    </div>
                    <div class="form-group">
                        <label for="hobby">兴趣爱好</label>
                        <input type="text" id="hobby" name="hobby" style="border: solid 1px gray"
                               value="${user.hobby}"/>
                    </div>
                    <button type="submit" class="btn btn-primary" style="margin-left: 215px">保存</button>
                </form>
            </div>
        </div>
        <div class="col-md-2">
        </div>
    </div>
</div>
</body>
</html>
