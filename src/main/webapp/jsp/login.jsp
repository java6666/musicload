<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hasee
  Date: 2017/4/7
  Time: 13:01
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

    <title>KoolTube</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/bootstrap.min.css"/>"  type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/style.css"/>">
    <%--test.css--%>
    <link rel="stylesheet" href="<c:url value="/webmusicpages/css/test.css"/>">

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
                            </div>
                        </div>
                    </li>
                    <li><a href="archive.html"><i class="fa fa-cubes"></i> Blocks</a></li>
                    <li><a href="/userMusic"><i class="fa fa-envelope"></i> 我的音乐</a></li>
                    <li style="margin-left: 400px" class="dropdown">
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
                                    <li><a onclick="showLogin()">Login</a></li>
                                    <li><a href="archive.html">Register</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


</header>

<%--登录--%>
<div class="container-fluid" style="position: relative;background-color: #31b0d5">
    <div id="one">1</div>
    <div class="col-md-5" id="login">
        <div class="row" style="height: 250px;border: solid 1px #2d2d2d">
            <div style="background-color: #2d2d2d;color: white;height: 40px">
                <div class="col-md-11">
                    <p style="line-height: 35px">乐听用户登录</p>
                </div>
                <div class="col-md-1"><button onclick="hide()" style="background-color: #2d2d2d;border: none">×</button></div>
            </div>
            <form class="form" action="/login" method="post">
                <div class="form-group">
                    <label for="userName">
                        <input id="userName" style="width: 400px;margin-left: 40px;border: solid gray 1px" class="form-control" type="text" name="userName" placeholder="请输入用户名"/>
                    </label>
                </div>
                <div >
                    <label for="password">
                        <input id="password" style="width: 400px;margin-left: 40px;border: solid gray 1px" class="form-control" type="password" name="password" placeholder="请输入密码"/>
                    </label>
                </div>
                <c:if test="${notExists}">
                    <p style="color: red;font-size: 16px">该用户名不存在</p>
                </c:if>
                <c:if test="${failInfo}">
                    <p style="color: red;font-size: 16px">密码有误</p>
                </c:if>
                <div style="margin-left: 100px">
                    <button type="submit"  class="btn btn-primary col-md-4">登录</button>
                    <button type="submit"  class="btn btn-success col-md-3 col-md-offset-1">
                        <a style="color: white">注册</a>
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<%--注册--%>

</body>
<script>
    function showLogin() {
        var login = document.getElementById("login");
        login.style.display="block";
    }
    function hide() {
        var login = document.getElementById("login");
        login.style.display="none";
    }
</script>
</html>
