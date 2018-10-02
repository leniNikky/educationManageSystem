<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>
         ReadingAcademy
        </title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="res/css/font-awesome.min.css" rel="stylesheet" type="text/css"
        />
        <link href="res/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="res/css/animate.min.css" rel="stylesheet" type="text/css" />
        <link href="res/css/global.css" rel="stylesheet" type="text/css" />
        <link href="res/css/lib.css" rel="stylesheet" type="text/css" />
        <link href="res/css/style.css" rel="stylesheet" type="text/css" />
        <script src="res/js/jquery-1.9.1.min.js">
        </script>
        <script src="res/js/global.js">
        </script>
        <script src="res/js/cn.js">
        </script>
        <script src="res/js/checkform.js">
        </script>
        <script src="res/js/wow.js">
        </script>
        <script src="res/js/imagesloaded.min.js">
        </script>
        <script src="res/js/countup.js">
        </script>
        <script src="res/js/bootstrap.min.js">
        </script>
        <script>
            jQuery(window).scrollTop(0);
            jQuery('html,body').scrollTop(0);
            new WOW().init({
                mobile: false
            });

            $(function() {
                setTimeout(function() {
                    $('#body').show();
                },
                500);
            })
        </script>
        <link href="res/css/member.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="res/js/member.js">
        </script>
</head>
<body>
<header class="trans border-box  ">
            <div class="wrap clean relative">
                <div id="logo" class="fl relative trans">
                    <a href="index.jsp"​ class="relative trans">
                        <img src="res/picture/logo.png" alt="" class="max-w100 max-h100 trans">
                    </a>
                </div>
               <nav class="absolute fz0 trans border-box stopP ">
                    <div class="bd over clean">
                        <div class="title clean show992">
                            <a href="#"​ class="btn-close trans middle fr" onClick="ActionMenu('Close');">
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="index.jsp"​>
                                首页
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="about.html"​>
                                关于
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/allcourse"​ class='on trans'>
                                课程
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/alladdress"​>
                                教学点
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/alllesson"​>
                                预报名
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="news.html"​>
                                公告
                            </a>
                        </div>
                        <div class="nav-item text-center trans" style="float:right">
                            <a href="login.jsp"​>
                                <img src="res/images/userimage.jpg" alt="" class="max-w100 max-h100 trans" style="border-radius:50%;width:30px;margin-right:5px;">
                            </a>
                        </div>
                        <!--<div class="member show992 clean"> <a href="#"​ class="login member-btn fl content-box text-center trans"><i></i>登录</a> <a href="#"​ class="try member-btn fl content-box text-center trans">注册账号</a> </div>-->
                    </div>
                </nav>
                <!--<div class="header-user fr"> <a href="#"​ class="login inline-block text-center border-box trans hide992" rel="nofollow"><i></i>登录</a> <a href="#"​ class="try inline-block text-center border-box trans hide992" rel="nofollow">注册账号</a> </div>-->
                <div class="menu-button fr stopP show992 trans">
                    <a href="#"​ class="fa fa-align-justify trans" rel="nofollow"
                    onclick="ActionMenu();">
                    </a>
                </div>
            </div>
        </header>

 <div id="header-blank" class="show992">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="res/picture/2620184e5e.jpg" alt="" class="max-w100">
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank15">
            </div>
            <div id="products">
                <div class="category-list text-center fz0 hide992 wow fadeInUp">
                   <c:forEach items="${allcourse}" var="course">
                    <a href="#"​ class="item inline-block trans ">
                        ${course.courseName }
                    </a>
                </c:forEach> 
                   
                </div>
                <div class="category-list text-center show992 wow fadeInUp">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                            产品
                            <span class="caret">
                            </span>
                        </button>
                        <ul class="dropdown-menu">
                         <c:forEach items="${allcourse}" var="course">
                            <li>
                                <a href="#"​ cid="1" rel="nofollow">
                                     ${course.courseName }
                                </a>
                            </li>
                         </c:forEach> 
                           
                        </ul>
                    </div>
                </div>
                <div class="products-bg trans">
                    <div class="wrap">
                        <div id="products-box">
                            <div class="products-list relative fz0">
                               <c:forEach items="${allcourse}" var="course">
                                <div class='item inline-block relative wow fadeInUp'>
                                    <div class="main">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="${course.courseName }" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${course.courseImg }" alt="${course.courseName }" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans over hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="/course_show?courseID=${course.courseID }"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        特色课程
                                                    </a>
                                                    <a href="/course_show?courseID=${course.courseID }"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详情
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    ${course.courseName }
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="product_show.html"​ class="block trans text-center"
                                        rel="nofollow">
                                           特色课程
                                        </a>
                                        <a href="product_show.html"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详情
                                        </a>
                                    </div>
                                </div>
                              </c:forEach> 
                            </div>
                            <div id="turn_page" class="wow fadeInUp" first last>
                                <font class="page_item_current">
                                    1
                                </font>
                                <a class="page_item" href='list_17_2.html'>
                                    2
                                </a>
                                <a class="page_button" href='list_17_2.html'>
                                    <i class="fa fa-chevron-right trans middle">
                                    </i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
          
            <jsp:include page="footer.jsp"/>
            <div id="follow">
                <div id="openHotline" class="item relative hide992" row="2">
                    <a href="#"​ class="ico orange block absolute" title="服务热线"
                    onclick="OptHot(1);OptQrcode(0);OptOnline(0);" rel="nofollow">
                    </a>
                    <div id="hotline">
                        <div class="top clean">
                            服务热线
                            <a href="#"​ class="fr fa fa-times" title="隐藏热线" onClick="OptHot(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a class="list block trans">
                                0755-88888888
                            </a>
                            <a class="list block trans">
                                400-8888-888
                            </a>
                        </div>
                    </div>
                </div>
                <div id="openOnline" class="item relative hide992" row="2">
                    <a href="#"​ class="ico blue block absolute" title="在线咨询" onClick="OptOnline(1);OptQrcode(0);OptHot(0);"
                    rel="nofollow">
                        <span class="middle fa fa-qq fa-2x">
                        </span>
                    </a>
                    <div id="online">
                        <div class="top clean">
                            在线咨询
                            <a href="#"​ class="fr fa fa-times" title="隐藏咨询" onClick="OptOnline(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a href="#"​ class="list block trans"
                            title="咨询TA" target="_blank" rel="nofollow" d="2498989222">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                            <a href="#"​ class="list block trans"
                            title="咨询TA" target="_blank" rel="nofollow" d="88889999">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item relative show992 trans">
                    <a href="#"​ class="ico blue block trans phone" rel="nofollow">
                    </a>
                </div>
                <div class="item relative trans">
                    <a href="#"​ class="ico red block trans sina" title="关注微博"
                    target="_blank" rel="nofollow">
                        <span class="middle fa fa-weibo fa-2x">
                        </span>
                    </a>
                </div>
                <div id="openQrcode" class="item relative trans">
                    <a href="#"​ class="ico green block trans wechat" title="关注微信"
                    onclick="OptQrcode();OptOnline(0)" rel="nofollow">
                        <span class="middle fa fa-weixin fa-2x">
                        </span>
                    </a>
                    <div id="wechat-qrcode">
                        <img src="picture/erweima.png" alt="" width="200" />
                    </div>
                </div>
                <div class="item relative">
                    <a href="#"​ class="ico block trans totop show totop" title="回到顶部"
                    onclick="toTop();" rel="nofollow">
                        <span class="middle fa fa-angle-up fa-2x">
                        </span>
                    </a>
                </div>
            </div>
        </div>
        <script src="res/js/website.js">
        </script>
</body>
</html>