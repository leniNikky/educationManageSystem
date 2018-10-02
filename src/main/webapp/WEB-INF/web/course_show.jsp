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
        <meta name="description" content="20年建站经验 + 1000家企业客户 + 高端建站团队" />
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
                            <a href="price.html"​>
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
        <div id="header-blank">
        </div>
        <div id="body" class="trans">
            <div id="products-detail">
                <div id="banner" class="relative hide992">
                    <div class="bd over">
                        <div class="bar relative fz0 nowrap">
                            <div class="item relative inline-block text-center fz0 over item-0">
                                <img src="res/picture/2620184e5e.jpg" alt="" class="max-w100">
                            </div>
                        </div>
                    </div>
                </div>
                <div id="small-banner" class="relative show992">
                    <div class="bd over">
                        <div class="bar relative fz0 nowrap">
                        </div>
                    </div>
                </div>
                <div class="blank25">
                </div>
                <div class="blank25">
                </div>
                <div id="info-detail" class="wrap1200 wow fadeInUp">
                    <div class="top text-center">
                        <div class="info-title">
                           ${course.courseName }
                        </div>
                       
                        <div class="blank9">
                        </div>
                    </div>
                    <div class="blank25">
                    </div>
                    <div class="editor wow fadeInUp">
                        <div>
                            <p style="text-align: center;font-size:1.1em;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                ${course.courseIntro }
                            </p>
                        </div>
                        <div style="text-align: center;">
                            <img alt="" src="${course.courseImg }" />
                        </div>
                    </div>
                </div>
                <div class="blank25">
                </div>
                <div class="blank25">
                </div>
                <div class="products-process text-center">
                    <div class="detail-title">
                        「急」速报名，立刻拥有该课程
                    </div>
                    <div class="process-list wrap">
                        <div class="process-item inline-block relative">
                            <div class="bg relative">
                                <img src="res/picture/hexagon-bg.png" alt="" class="max-w100 block">
                            </div>
                            <div class="shadow absolute">
                            </div>
                            <div class="main absolute">
                                <div class="ico i1">
                                </div>
                                <div class="name">
                                    注册
                                </div>
                            </div>
                        </div>
                        <div class="process-item inline-block relative">
                            <div class="bg relative">
                                <img src="res/picture/hexagon-bg.png" alt="" class="max-w100 block">
                            </div>
                            <div class="shadow absolute">
                            </div>
                            <div class="main absolute">
                                <div class="ico i2">
                                </div>
                                <div class="name">
                                    选择
                                </div>
                            </div>
                        </div>
                        <div class="process-item inline-block relative">
                            <div class="bg relative">
                                <img src="res/picture/hexagon-bg.png" alt="" class="max-w100 block">
                            </div>
                            <div class="shadow absolute">
                            </div>
                            <div class="main absolute">
                                <div class="ico i3">
                                </div>
                                <div class="name">
                                    购买
                                </div>
                            </div>
                        </div>
                        <div class="process-item inline-block relative">
                            <div class="bg relative">
                                <img src="res/picture/hexagon-bg.png" alt="" class="max-w100 block">
                            </div>
                            <div class="shadow absolute">
                            </div>
                            <div class="main absolute">
                                <div class="ico i4">
                                </div>
                                <div class="name">
                                    成功
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="products-service text-center clean">
                    <div class="detail-title">
                        完善的学习服务
                    </div>
                    <div class="service-list wrap fz0">
                        <div class="service-item inline-block">
                            <div class="ico i1">
                            </div>
                            <div class="name">
                                购买课程
                            </div>
                        </div>
                        <div class="service-item inline-block">
                            <div class="ico i2">
                            </div>
                            <div class="name">
                                课后学习
                            </div>
                        </div>
                        <div class="service-item inline-block">
                            <div class="ico i3">
                            </div>
                            <div class="name">
                                课前预习
                            </div>
                        </div>
                        <div class="service-item inline-block">
                            <div class="ico i4">
                            </div>
                            <div class="name">
                                作业跟踪
                            </div>
                        </div>
                        <div class="service-item inline-block">
                            <div class="ico i5">
                            </div>
                            <div class="name">
                                解答疑惑
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank25 hide992">
            </div>
            <div class="blank25 hide992">
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            
            <div class="blank25 hide992">
            </div>
            <div class="blank25 hide992">
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