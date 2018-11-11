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
                            <a href="/about"​>
                                关于
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/allcourse"​>
                                课程
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/alladdress"​ class='on trans'>
                                教学点
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/alllesson"​>
                                预报名
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                             <c:choose>
                          <c:when test="${user ne null }">
                            <a href="allannouncement">
                                公告
                            </a>
                        </c:when>
                        <c:otherwise>
                         <a href="announcements"​>
                                公告
                            </a>
                        </c:otherwise>
                        </c:choose>
                        </div>
                         <div class="nav-item text-center trans" style="float:right">
                         <c:choose>
                          <c:when test="${user ne null }">
                           <a href="/usersLogin"​>
                                <img src="res/images/userimage.jpg" alt="" class="max-w100 max-h100 trans" style="border-radius:50%;width:30px;margin-right:5px;">
                            </a>
                        </c:when>
                        <c:otherwise>
                         <a href="login.jsp"​>
                                <img src="res/images/userimage.jpg" alt="" class="max-w100 max-h100 trans" style="border-radius:50%;width:30px;margin-right:5px;">
                            </a>
                        </c:otherwise>
                        </c:choose>
                           
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
                                <img src="res/picture/44c5a1b00c.jpg" alt="" class="max-w100">
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
                            ${address.addressName }
                        </div>
                        <div class="blank9">
                        </div>
                        <span>
                            联系方式：${address.addressPhone }
                        </span>
                    </div>
                    <div class="blank25">
                    </div>
                    <div class="editor wow fadeInUp">
                        <div>
                            <p style="text-align: center;font-size:1.1em">&nbsp;
                                 ${address.addressIntro }
                            </p>
                        </div>
                        <div style="text-align: center;">
                            <img alt="" src="${address.addressImg }" />
                        </div>
                    </div>
                </div>
                <div class="blank25">
                </div>
                <div class="blank25">
                </div>
                
                
           
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
			<jsp:include page="footer.jsp"/>
        	<jsp:include page="rightfollow.jsp"/>
        </div>
        <script src="js/website.js">
        </script>
    </body>

</html>