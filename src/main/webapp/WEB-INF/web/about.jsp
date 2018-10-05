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
                            <a href="/about" class='on trans'​>
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
                            <a href="/alllesson"​>
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
                            <img src="res/picture/about.png" alt="" class="max-w100">
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
            <div id="about" class="wrap">
                <div class="clean">
                    <div class="item fr fz0 text-center wow fadeInUp">
                        <img src="res/picture/db39253b5d.jpg" alt="" class="max-w100">
                    </div>
                    <div class="item about-brief fl border-box text-center wow fadeInUp">
                        <div class="about-title text-center">
                            <div class="title-0">
                                WHO ARE WE
                            </div>
                            <div class="title-1">
                                <span>
                                    我们是谁
                                </span>
                            </div>
                        </div>
                        <div class="brief">
                            某某网络作为全国首家规范市场价格的平台，打破网站制作暴利，明码标价，价格更透明， 没有差价！
                            <br />
                            500多位技术团队，60%美工6年以上经验，80%程序5年以上经验，7X24专业服务，售后无忧
                            <br />
                            大部分只做本地区客户，外地客户不接。！
                            <br />
                            70%国内客户；30%国外客户；80%的业务来自搜索引擎
                            <br />
                            大部分为初级美工和程序员，对细节和体验把握不到位。
                            <br />
                            拥有多年平台系统、商城门户、手机微信网站开发经验
                            <br />
                            大部分都是2--3年资历的初创公司，流程、技术水平、售后都不完善，
                            <br />
                            集团公司助资，12年历史见证，100万红包，助力中小企业创业!。
                        </div>
                    </div>
                </div>
                <div class="clean relative">
                    <div class="item fl fz0 text-center wow fadeInUp">
                        <img src="res/picture/18beffa957.jpg" alt="" class="max-w100">
                    </div>
                    <div class="item number text-center absolute wow fadeInUp">
                        <div class="i fl">
                            <div id="down-0" class="n" data-start="0" data-end="11" data-duration="1">
                                11
                            </div>
                            完善的教学体系
                        </div>
                        <div class="i fl">
                            <div id="down-1" class="n" data-start="0" data-end="300" data-duration="1"
                            data-suffix="+">
                                300+
                            </div>
                            优秀学员推动力
                        </div>
                        <div class="i fl">
                            <div id="down-2" class="n" data-start="0" data-end="10000" data-duration="1"
                            data-suffix="+">
                                10000+
                            </div>
                            家长信心选择
                        </div>
                    </div>
                </div>
            </div>
            <div id="team" class="wrap">
                <div class="about-title text-center">
                    <div class="title-0 wow fadeInUp">
                        Teaching TEAM
                    </div>
                    <div class="title-1 wow fadeInUp">
                        <span>
                          教学团队
                        </span>
                    </div>
                </div>
                <div class="team-list clean">
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队18" rel="nofollow">
                                <img src="res/picture/1-1f9291239550-l.jpg" alt="团队18" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队17" rel="nofollow">
                                <img src="res/picture/1-1f9291239440-l.jpg" alt="团队17" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队16" rel="nofollow">
                                <img src="res/picture/1-1f9291239330-l.jpg" alt="团队16" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队15" rel="nofollow">
                                <img src="res/picture/1-1f9291239550-l.jpg" alt="团队15" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队14" rel="nofollow">
                                <img src="res/picture/1-1f9291239550-l.jpg" alt="团队14" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队13" rel="nofollow">
                                <img src="res/picture/1-1f929123u90-l.jpg" alt="团队13" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队12" rel="nofollow">
                                <img src="res/picture/1-1f929123t70-l.jpg" alt="团队12" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队11" rel="nofollow">
                                <img src="res/picture/1-1f929123s40-l.jpg" alt="团队11" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>
                    <div class="item item0 fl relative text-center wow fadeInUp">
                        <div class="img grayscale">
                            <a href="#"​ class="trans block" title="团队10" rel="nofollow">
                                <img src="res/picture/1-1f929123j10-l.jpg" alt="团队10" class="grayscale-img max-w100 trans">
                            </a>
                        </div>
                    </div>

                </div>
            </div>
            <div class="blank20">
            </div>
            <div class="blank20">
            </div>
            <div class="blank20">
            </div>
            <div class="blank20">
            </div>
           <jsp:include page="footer.jsp"/>
           <jsp:include page="rightfollow.jsp"/>
        </div>
        <script src="res/js/website.js">
        </script>
</body>
</html>