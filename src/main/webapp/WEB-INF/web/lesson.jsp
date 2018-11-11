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
        <link href="res/css/newstyle.css" rel="stylesheet" type="text/css" />
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
                            <a href="/alladdress"​>
                                教学点
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                            <a href="/alllesson"​ class='on trans'>
                                预报名
                            </a>
                        </div>
                        <div class="nav-item fl text-center trans">
                          <c:choose>
                          <c:when test="${user ne null }">
                            <a href="allannouncement"​>
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
        <div id="header-blank" class="show992">
        </div>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <div class="item relative inline-block text-center fz0 over item-0">
                            <img src="res/picture/710472f909.jpg" alt="" class="max-w100">
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
            <div id="tutorial">
                <div class="tutorial-support">
                    <div class="wrap clean">
                        <form class="support-search fl relative" action="/findLessonByName" method="post">
                            <div class=" block border-box">
                            <input type="text" class="text fl" name="lessonName" value="" placeholder="请输入想找的开班课程">
                 			<button type="submit" class="btn btn-primary fl" style="margin:15px 0 0 10px;">搜索</button>
                 			</div>
                        </form>
                        <!--<a href="#"​ class="play ico trans fl middle wow fadeInUp">视频</a>-->
                        <div class="line fl middle">
                        </div>
                       
                        
                        <a href="#"​ class="question ico trans fr middle wow fadeInUp">
                           报名须知
                        </a>
                    </div>
                </div>
                <div class="wrap">
                    <div class="tutorial-list clean">
                     <c:forEach items="${alllesson}" var="lesson">
                        <div class='item wow fadeInUp eleflr'>
                            <div class="date fl">
                                <div class="year">
                                    ${lesson.lessonYear }
                                </div>
                                <div class="day">
                                    ${lesson.lessonDate }
                                </div>
                            </div>
                            <div class="info fl">
                                <div class="name text-over">
                                    <a href="/lesson_show?lessonID=${lesson.lessonID }"​ class="trans">
                                       ${lesson.lessonName }
                                    </a>
                                </div>
                                <div class="brief over">
                                    ${lesson.lessonIntro }
                                </div>
                            </div>
                        </div>
                     </c:forEach>
                    </div>
                    <div id="turn_page" class="wow fadeInUp" first last>
                        <font class="page_item_current">
                            1
                        </font>
                        <a class="page_item" href='list_12_2.html'>
                            2
                        </a>
                        <a class="page_button" href='list_12_2.html'>
                            <i class="fa fa-chevron-right trans middle">
                            </i>
                        </a>
                    </div>
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                 <div class="text-center">
                    <div class="try-button-box wrap fz0">
                        <a href="#"​ target="_blank"
                        class="button inline-block text-center trans wow fadeInUp">
                            我要预报名
                        </a>
                    </div>
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
            </div>
           <jsp:include page="footer.jsp"></jsp:include>
            <jsp:include page="rightfollow.jsp"></jsp:include>
        </div>
        <script src="res/js/website.js">
        </script>
</body>
</html>