<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>ReadingAcademy</title>
        <meta name="keywords" content="ReadingAcademy专注英语阅读教育" />
        <meta name="description" content="ReadingAcademy专注英语阅读教育" /> 
        <meta name="author" content="ra" />
        <meta name="copyright" content="ra" />
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
		 window.location.href="index";

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
    </head>
    
    <body>
       <jsp:include page="header.jsp"/>
        <div id="body" class="trans">
            <div id="banner" class="relative hide992">
                <div class="bd over">
                    <div class="bar relative fz0 nowrap">
                        <!--<div class="item relative inline-block text-center fz0 over item-0"> <a href="#"​ class="banner-button absolute text-center trans-1s"></a> <img src="" alt="" class="max-w100">
                        <div class="font font-0 text-center absolute nowrap trans-1s"><span class="trans-1s inline-block">模版 · 一样可以很精致</span></div>
                        <img class="img-0 img trans-1s absolute" src="" alt=""/> <img class="img-1 img trans-1s absolute" src="" alt=""/> <img class="img-2 img trans-1s absolute" src="" alt=""/> </div>-->
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="res/picture/1-1f92z915060-l.jpg" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="res/picture/1-1f92z915190-l.jpg" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
                        </div>
                        <div class="item relative inline-block text-center fz0 over item-1">
                            <!--<a class="banner-button absolute text-center trans-1s"></a>-->
                            <img src="res/picture/1-1f929111s30-l.jpg" alt="" class="max-w100">
                            <a class="absolute">
                            </a>
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
            <div id="products" class="index">
                <div class="index-title text-center wow fadeInUp">
                    课程
                </div>
                <div class="index-brief text-center wow fadeInUp">
                    10年教育历程 + 专注英语教育 + 专业教师团队
                </div>
                <div class="category-list text-center fz0 hide992 wow fadeInUp">
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        新概念一
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        新概念二
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        新概念三
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        中考语法
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        语法串讲
                    </a>
                    <a href="#"​ class="item inline-block trans"
                    cid="6" rel="nofollow">
                        Let's go系列
                    </a>
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        读写新视野
                    </a>
                    <!-- <a href="#"​ class="item inline-block trans" cid="7" rel="nofollow">餐饮美食</a> 
                    <a href="#"​ class="item inline-block trans" cid="9" rel="nofollow">设计建筑</a>-->
                </div>
                <div class="category-list text-center show992 wow fadeInUp">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                            全部课程
                            <span class="caret">
                            </span>
                        </button>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    新概念一
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    新概念二
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    新概念三
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    中考语法
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    语法串讲
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    Let's go系列
                                </a>
                            </li>
                            <li>
                                <a href="#"​ cid="6" rel="nofollow">
                                    读写新视野
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="products-bg trans">
                    <div class="wrap">
                        <div id="products-box" class="over">
                            <div class="products-list relative fz0 trans">
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="财税代理公司注册" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g009143133218.jpg" alt="财税代理公司注册" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    财税代理公司注册
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="记忆枕头床上用品" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g009143a80-l.jpg" alt="记忆枕头床上用品" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    记忆枕头床上用品
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="门业木材铝合金门窗" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g0091436390-l.jpg" alt="门业木材铝合金门窗" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    门业木材铝合金门窗
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="打印机印刷设备" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g0091436130-l.jpg" alt="打印机印刷设备" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    打印机印刷设备
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="淀粉原材料" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g0091435480-l.jpg" alt="淀粉原材料" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    淀粉原材料
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="灯箱标识设计" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="res/picture/1-1g0091435090-l.png" alt="灯箱标识设计" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="#"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                        预览
                                                    </a>
                                                    <a href="#"​ class="links fr trans">
                                                        <i>
                                                        </i>
                                                        详细
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info clean">
                                            <div class="left fl">
                                                <div class="name">
                                                    灯箱标识设计
                                                </div>
                                                <div class="category">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mask trans">
                                    </div>
                                    <div class="opt-msg trans over">
                                        <a href="#"​ class="block trans text-center"
                                        rel="nofollow">
                                            预览
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                            详细
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="box-button text-center fz0 wow fadeInUp">
                                <!--<a href="#"​ class="prev button inline-block trans" rel="nofollow"><i class="fa fa-chevron-left trans middle"></i></a>-->
                                <a href="#"​ class="more-list inline-block trans">
                                    <i class="trans middle relative">
                                    </i>
                                </a>
                                <!--<a href="#"​ class="next button inline-block trans" rel="nofollow"><i class="fa fa-chevron-right trans middle"></i></a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blank15">
            </div>
            <div class="blank15">
            </div>
            <div class="index-cooperation wrap">
                <div class="index-title text-center wow fadeInUp">
                    教学点
                </div>
                <div class="index-brief text-center wow fadeInUp">
                    多个教学点，方便你就近选择！
                </div>
                <div class="blank20">
                </div>
                <div class="cooperation-box s5 relative hide768 wow fadeInUp">
                    <div class="bd over">
                        <div class="bar trans relative fz0 nowrap">
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="周大生"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z944060-l.jpg" alt="周大生" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="环保"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z943130-l.jpg" alt="环保" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="tony"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z942530-l.jpg" alt="tony" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="7度"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z942410-l.jpg" alt="7度" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="平安"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z942280-l.jpg" alt="平安" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="福特"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z942160-l.jpg" alt="福特" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="北大"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z942010-l.jpg" alt="北大" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="颜色"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z941470-l.jpg" alt="颜色" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="激光"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z941330-l.jpg" alt="激光" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="同学会"
                                rel="nofollow">
                                    <img src="res/picture/1-1f92z941160-l.jpg" alt="同学会" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="hd text-center fz0">
                    </div>
                </div>
                <div class="cooperation-box s3 relative show768 wow fadeInUp">
                    <div class="bd over">
                        <div class="bar trans relative fz0 nowrap">
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="周大生" rel="nofollow">
                                    <img src="res/picture/1-1f92z944060-l.jpg" alt="周大生" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="环保" rel="nofollow">
                                    <img src="res/picture/1-1f92z943130-l.jpg" alt="环保" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="tony" rel="nofollow">
                                    <img src="res/picture/1-1f92z942530-l.jpg" alt="tony" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="7度" rel="nofollow">
                                    <img src="res/picture/1-1f92z942410-l.jpg" alt="7度" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="平安" rel="nofollow">
                                    <img src="res/picture/1-1f92z942280-l.jpg" alt="平安" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="福特" rel="nofollow">
                                    <img src="res/picture/1-1f92z942160-l.jpg" alt="福特" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="北大" rel="nofollow">
                                    <img src="picture/1-1f92z942010-l.jpg" alt="北大" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="颜色" rel="nofollow">
                                    <img src="picture/1-1f92z941470-l.jpg" alt="颜色" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="激光" rel="nofollow">
                                    <img src="res/picture/1-1f92z941330-l.jpg" alt="激光" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="同学会" rel="nofollow">
                                    <img src="res/picture/1-1f92z941160-l.jpg" alt="同学会" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="hd text-center fz0">
                    </div>
                </div>
            </div>
            <div class="blank25">
            </div>
            <div class="blank25">
            </div>
            <div class="index-tutorial">
                <div class="index-title text-center wow fadeInUp">
                    开班课程
                </div>
                <div class="index-brief text-center wow fadeInUp">
                    课程设置多样，平行班设置，让时间冲突不再是问题！
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="max-wrap clean relative wow fadeInUp">
                    <div class="img fl hide1300">
                        <a title="">
                            <img src="picture/3da6124a3d.jpg" alt="" class="max-w100 block">
                        </a>
                    </div>
                    <div class="tutorial-support absolute">
                        <div class="table">
                            <div class="table-cell middle">
                                <form name="formsearch" class="support-search fl relative" action="#">
                                    <input type="hidden" name="kwtype" value="0" />
                                    <input type="text" class="text block border-box" name="q" value="" placeholder="在哪里设置网站关键词">
                                    <input type="submit" class="hide" value="">
                                </form>
                                <div class="button fr text-center">
                                    <!--<a href="#"​ class="play ico trans inline-block middle">视频</a>-->
                                    <div class="line inline-block middle">
                                    </div>
                                    <a href="#"​ class="file ico trans inline-block middle">
                                        开班课程
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tutorial-list clean wrap">
                    <div class='item wow fadeInUp fl' class="item wow fadeInUp fl">
                        <div class="date fl">
                            <div class="year">
                                2017
                            </div>
                            <div class="day">
                                09-29
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="name text-over">
                                <a href="#"​ class="trans">
                                    为什么企业要建多国语言
                                </a>
                            </div>
                            <div class="brief over">
                                互联网在不断发展壮大，已成为企业和个人寻求生意机会，对商品、服务和信息进行了解的首选方式。从站在增强一个企业竞争优势的角度看，建设一个多语言网站是不断增加客户数量...
                            </div>
                        </div>
                    </div>
                    <div class='item wow fadeInUp fr' class="item wow fadeInUp fl">
                        <div class="date fl">
                            <div class="year">
                                2017
                            </div>
                            <div class="day">
                                09-29
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="name text-over">
                                <a href="#"​ class="trans">
                                    什么是伪静态？伪静态有
                                </a>
                            </div>
                            <div class="brief over">
                                伪静态是相对真实静态来讲的，真实静态会生成一个html或htm后缀的文件，访客能够访问到真实存在的静态页面，而伪静态则没有生成实体静态页面文件，而仅仅是以.html一类的静态页面...
                            </div>
                        </div>
                    </div>
                    <div class='item wow fadeInUp fl' class="item wow fadeInUp fl">
                        <div class="date fl">
                            <div class="year">
                                2017
                            </div>
                            <div class="day">
                                09-29
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="name text-over">
                                <a href="#"​ class="trans">
                                    企业建站选择主机和产品
                                </a>
                            </div>
                            <div class="brief over">
                                个人建站和企业建站是两个不同的，个人建站我们则是需要考虑成本的支出，比较大部分个人建站仅仅是用于兴趣爱好，对于空间和服务的要求可能不是很高的，而企业建站则是不同了...
                            </div>
                        </div>
                    </div>
                    <div class='item wow fadeInUp fr' class="item wow fadeInUp fl">
                        <div class="date fl">
                            <div class="year">
                                2017
                            </div>
                            <div class="day">
                                09-29
                            </div>
                        </div>
                        <div class="info fl">
                            <div class="name text-over">
                                <a href="#"​ class="trans">
                                    SEO网站的基本术语
                                </a>
                            </div>
                            <div class="brief over">
                                SEO SEO就是Search Engine Optimization的缩写,中文就是搜索引擎优化。 PR 值全称为PageRank(网页级别）,是Google用于用来标识网页的等级、重要性的一种方法，是Google用来衡量一个网站的好坏的重...
                            </div>
                        </div>
                    </div>
                </div>
                <div class="blank20">
                </div>
                <div class="blank20">
                </div>
                <div class="blank25">
                </div>
                <div class="text-center">
                    <div class="try-button-box wrap fz0">
                        <a href="#"​ target="_blank"
                        class="button inline-block text-center trans wow fadeInUp">
                            我要预报名
                        </a>
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
                            <a href="#"​ target="_blank">
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
                                <a href="#"​
                                class="ico block trans qq" rel="nofollow">
                                    <i class="fa fa-qq middle trans" onClick="popService(service2);">
                                    </i>
                                </a>
                                QQ
                            </div>
                            <div class="item text-center inline-block wow fadeInUp relative">
                                <a href="#"​ class="ico block trans wechat" rel="nofollow">
                                    <i class="fa fa-weixin middle trans">
                                    </i>
                                </a>
                                微信
                                <div class="qrcode absolute trans">
                                    <img src="picture/erweima.png" alt="" width="200" />
                                </div>
                            </div>
                            <div class="item text-center inline-block wow fadeInUp">
                                <a href="#"​ class="ico block trans sina" rel="nofollow"
                                target="_blank">
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
    </script>

</html>
