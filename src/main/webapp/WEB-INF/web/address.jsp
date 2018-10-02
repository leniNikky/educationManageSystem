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
 <div id="body" class="trans">
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
            <div class="bgf3">
                <div id="instance" class="wrap clean">
                    <div class="instance-list clean">
                     <c:forEach items="${alladdress}" var="address">
                        <div class='item border-box over wow fadeInUp fl' style="margin-right:1%">
                            <div class="relative clean">
                                <div class="cover fl relative">
                                    <img src="res/picture/notebook.png" alt="${address.addressName }" class="trans max-w100" ondragstart="return false;">
                                    <div class="img absolute text-center fz0">
                                        <img src="${address.addressImg }" alt="${address.addressName }" class="trans" ondragstart="return false;">
                                    </div>
                                </div>
                                <div class="info fl">
                                    <div class="clean">
                                        <div class="logo fl text-center over fz0">
                                            <img src="${address.addressImg }" alt="福特自行车" class="middle max-w100 inline-block">
                                            <span class="middle-span">
                                            </span>
                                        </div>
                                        <div class="title fl">
                                            <div class="name">
                                                ${address.addressName }
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="brief over">
                                     ${address.addressIntro }
                                    </div>
                                   <a href="/address_show?addressID=${address.addressID }"​ ​ class="view block text-center" rel="nofollow">
                                        查看详情
                                    </a>
                                </div>
                            </div>
                        </div>
                     
                       </c:forEach>
                    </div>
                    <div id="turn_page" class="wow fadeInUp" first last>
                        <span class="pageinfo">
                            共
                            <strong>
                                1
                            </strong>
                            页
                            <strong>
                                6
                            </strong>
                            条记录
                        </span>
                    </div>
                    <div class="blank20">
                    </div>
                    <div class="blank20">
                    </div>
                    <div class="blank20">
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
            <div class="text-center">
                <div class="try-button-box wrap fz0">
                    <a href="#" ​ target="_blank" class="button inline-block text-center trans wow fadeInUp">
                        我要私人定制
                    </a>
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
            <footer>
                <div class="blank15">
                </div>
                <div class="blank15">
                </div>
                <div class="wrap clean">
                    <div class="left fl">
                        <div class="title wow fadeInUp">
                            互联网 · 最高端 模板一样可以很精致
                        </div>
                        <div class="hotline wow fadeInUp">
                            0755-88888888 400-8888-888
                        </div>
                        <div class="address wow fadeInUp">
                            广东省深圳市前海经济开发区88号&nbsp;&nbsp;&nbsp;
                            <a href="#" ​ target="_blank">
                                ICP备XXXXXXXX号
                            </a>
                            &nbsp;
                            <a target="_blank" href="http://www.beian.gov.cn/" style="display:inline-block;">
                                <img src="picture/govbeian.png" align="absmiddle" />
                                &nbsp;公网安备XXXXXXXXXXXXXX号
                            </a>
                        </div>
                    </div>
                    <div class="follow fr fz0">
                        <div class="title relative text-center wow fadeInUp">
                            <span class="relative">
                                关注
                            </span>
                        </div>
                        <div class="text-center">
                            <div class="item text-center inline-block wow fadeInUp">
                                <a href="#" ​ class="ico block trans qq" rel="nofollow">
                                    <i class="fa fa-qq middle trans" onClick="popService(service2);">
                                    </i>
                                </a>
                                QQ
                            </div>
                            <div class="item text-center inline-block wow fadeInUp relative">
                                <a href="#" ​ class="ico block trans wechat" rel="nofollow">
                                    <i class="fa fa-weixin middle trans">
                                    </i>
                                </a>
                                微信
                                <div class="qrcode absolute trans">
                                    <img src="picture/erweima.png" alt="" width="200" />
                                </div>
                            </div>
                            <div class="item text-center inline-block wow fadeInUp">
                                <a href="#" ​ class="ico block trans sina" rel="nofollow" target="_blank">
                                    <i class="fa fa-weibo middle trans">
                                    </i>
                                </a>
                                微博
                            </div>
                        </div>
                    </div>
                </div>
                <div class="blank20">
                </div>
                <div class="blank15">
                </div>
                <div class="bottom">
                    <div class="wrap clean">
                        <div class="links fl">
                            友情链接 :
                            <a href='http://www.17sucai.com/' target='_blank'>
                                网站模板
                            </a>
                        </div>
                        <div class="copyright fr">
                            Copyright &copy; 2002-2017 某某网络建站有限公司 版权所有 ICP备XXXXXXXX号
                        </div>
                    </div>
                </div>
            </footer>
            <div id="follow">
                <div id="openHotline" class="item relative hide992" row="2">
                    <a href="#" ​ class="ico orange block absolute" title="服务热线" onClick="OptHot(1);OptQrcode(0);OptOnline(0);"
                    rel="nofollow">
                    </a>
                    <div id="hotline">
                        <div class="top clean">
                            服务热线
                            <a href="#" ​ class="fr fa fa-times" title="隐藏热线" onClick="OptHot(0);"
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
                    <a href="#" ​ class="ico blue block absolute" title="在线咨询" onClick="OptOnline(1);OptQrcode(0);OptHot(0);"
                    rel="nofollow">
                        <span class="middle fa fa-qq fa-2x">
                        </span>
                    </a>
                    <div id="online">
                        <div class="top clean">
                            在线咨询
                            <a href="#" ​ class="fr fa fa-times" title="隐藏咨询" onClick="OptOnline(0);"
                            rel="nofollow">
                            </a>
                        </div>
                        <div class="qq-list">
                            <a href="#" ​ class="list block trans" title="咨询TA" target="_blank" rel="nofollow"
                            d="2498989222">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                            <a href="#" ​ class="list block trans" title="咨询TA" target="_blank" rel="nofollow"
                            d="88889999">
                                <span class="fa fa-qq trans">
                                </span>
                                资深顾问
                            </a>
                        </div>
                    </div>
                </div>
                <div class="item relative show992 trans">
                    <a href="#" ​ class="ico blue block trans phone" rel="nofollow">
                    </a>
                </div>
                <div class="item relative trans">
                    <a href="#" ​ class="ico red block trans sina" title="关注微博" target="_blank"
                    rel="nofollow">
                        <span class="middle fa fa-weibo fa-2x">
                        </span>
                    </a>
                </div>
                <div id="openQrcode" class="item relative trans">
                    <a href="#" ​ class="ico green block trans wechat" title="关注微信" onClick="OptQrcode();OptOnline(0)"
                    rel="nofollow">
                        <span class="middle fa fa-weixin fa-2x">
                        </span>
                    </a>
                    <div id="wechat-qrcode">
                        <img src="picture/erweima.png" alt="" width="200" />
                    </div>
                </div>
                <div class="item relative">
                    <a href="#" ​ class="ico block trans totop show totop" title="回到顶部" onClick="toTop();"
                    rel="nofollow">
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