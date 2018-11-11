<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        />
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
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
                <c:forEach items="${allcourse}" var="course" begin="0" end="5" step="1" >
                    <a href="#"​ class="item inline-block trans" cid="6"
                    rel="nofollow">
                        ${course.courseName }
                    </a>
                </c:forEach> 
                    
                    <!-- <a href="#"​ class="item inline-block trans" cid="7" rel="nofollow">餐饮美食</a> 
                    <a href="#"​ class="item inline-block trans" cid="9" rel="nofollow">设计建筑</a>-->
                </div>
                <div class="category-list text-center show992 wow fadeInUp">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                            特色课程
                            <span class="caret">
                            </span>
                        </button>
                        <ul class="dropdown-menu">
                        <c:forEach items="${allcourse}" var="course" begin="0" end="5" step="1" >
                            <li>
                                <a href="/allcourse"​ cid="6" rel="nofollow">
                                    ${course.courseName }
                                </a>
                            </li>
                         </c:forEach>   
                        </ul>
                    </div>
                </div>
                <div class="products-bg trans">
                    <div class="wrap">
                        <div id="products-box" class="over">
                            <div class="products-list relative fz0 trans">
                            <c:forEach items="${allcourse}" var="course" begin="0" end="5" step="1" >
                                <div class="item inline-block absolute wow fadeInUp" cid="0" status="on">
                                    <div class="main trans">
                                        <div class="cover scale relative">
                                            <img src="res/picture/notebook.png" alt="${course.courseName}" class="trans scale-img max-w100">
                                            <div class="img absolute text-center fz0">
                                                <img src="${course.courseImg}" alt="${course.courseName}" class="trans scale-img">
                                            </div>
                                            <div class="opt absolute trans hide768">
                                                <div class="button-bg border-box clean">
                                                    <a href="/course_show?courseID=${course.courseID}"​ class="button fl trans text-center"
                                                    rel="nofollow">
                                                       特色课程
                                                    </a>
                                                    <a href="/course_show?courseID=${course.courseID}"​ class="links fr trans">
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
                                                    ${course.courseName}
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
                                            特色课程
                                        </a>
                                        <a href="#"​ class="block trans text-center">
                                            <i>
                                            </i>
                                           详情
                                        </a>
                                    </div>
                                </div>
 
                            </c:forEach>   
                            </div>
                            
                            <div class="box-button text-center fz0 wow fadeInUp">
                            
                                <a href="#"​ class="more-list inline-block trans">
                                
                                    <i class="trans middle relative" style="margin-top:10px">
                                    </i>
                                </a>
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
                          <c:forEach items="${alladdress}" var="address" begin="0" end="9" step="1" >
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0 grayscale" title="${address.addressName }"
                                rel="nofollow">
                                    <img src="${address.addressImg }" alt="${address.addressName }" class="max-w100 max-h100 middle grayscale-img trans">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="hd text-center fz0">
                    </div>
                </div>
                <div class="cooperation-box s3 relative show768 wow fadeInUp">
                    <div class="bd over">
                        <div class="bar trans relative fz0 nowrap">
                        <c:forEach items="${alladdress}" var="address" begin="0" end="9" step="1" >
                            <div class="item inline-block border-box trans">
                                <a class="text-center block border-box trans fz0" title="${address.addressName }" rel="nofollow">
                                    <img src="${address.addressImg }" alt="${address.addressName }" class="max-w100 max-h100 middle">
                                    <span class="middle-span">
                                    </span>
                                </a>
                            </div>
                        </c:forEach>
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
                </div>
                <div class="tutorial-list clean wrap">
                
                    <c:forEach items="${alllesson}" var="lesson" begin="0" end="3" step="1" >
                    <div class='item wow fadeInUp eleflr eletxt' class="item wow fadeInUp eleflr eletxt">
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
                                <a href="#"​ class="trans">
                                   ${lesson.lessonName }
                                </a>
                            </div>
                            <div class="brief eletxt">
                                ${lesson.lessonIntro }
                            </div>
                        </div>
                    </div>
                    </c:forEach>   
                            
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
           <jsp:include page="footer.jsp"/>
           <jsp:include page="rightfollow.jsp"/>
        </div>
        <script src="res/js/website.js">
        </script>
    </body>
    </script>

</html>
