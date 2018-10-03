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
            <script src="res/js/website.js">
        </script>
</body>
</html>