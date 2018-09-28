<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ReadingAcademy Login</title>
<!-- Custom Theme files -->
<link href="res/css/login.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
<script src="res/js/jquery-1.9.1.min.js"></script>
</head>
<script type="text/javascript">
    function changeImg() {
        var imgSrc = $("#imgObj");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", chgUrl(src));
    }
    //时间戳   
    //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳   
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();
        url = url.substring(0, 17);
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }
   
    
   $(function(){
	   $("#loginBtn").click(function(){
		  	  if($("#email").val()=="请输入邮箱" || $("#email").val()==""){
		  		  $("#msg").html("邮箱不能为空！").css("color","red");
					 return false;
				 }else if($("#password").val()=="请输入密码"|| $("#password").val()==""){
					 $("#msg").html("密码不能为空！").css("color","red");
					 return false;
				 }else if($("#index_code").val()=="请输入验证码" || $("#index_code").val()==""){
					 $("#msg").html("验证码不能为空！").css("color","red");
					 return false;
				 }else{
				 
					$.ajax({
			        	 type:"post",
			        	 url:"checkLogin",
			        	 data:{email:$("#email").val(),password:$("#password").val(),code:$("#index_code").val()},
			        	 dataType:"text",
			        	 beforeSend:function(){
			        		 $("#loginBtn").val("正在提交，请稍等...");
			        	 }, 
			        	 error:function(data){
			        		 $("#loginBtn").val("登录");
			        		 $("#msg").html(data).css("color","red");
			     		},
			     		success:function(data){
			     			if(data == "loginSuccess"){
			     				$("#loginBtn").val("登录");
				     			window.location.href="/usersLogin";
			     			}else{
			     				$("#loginBtn").val("登录");
			     				$("#msg").html(data).css("color","red");
			     				
			     			}
			     			
			     				 
			     		}

			        	
					
			         });
					}
		});
   })


</script>


<body>
<jsp:include page="header.jsp"/>
<div class="login">
		 <div class="login-main">
		 		<div class="login-top">
		 			<img src="res/images/head-img.png" alt=""/>
		 			<h1>登录 <span class="anc-color"> 你的账户</span> </h1>
		 			<p id="msg"></p>
		 			<input type="text" placeholder="请输入邮箱" id="email" name="email" required="">
                     <input type="password" placeholder="请输入密码" id="password" name="password" required="">
                     <input id="index_code" name="code" type="text"  placeholder="请输入验证码"/>
					<img id="imgObj" alt="验证码" src="code.html" />
        			<a href="#" onclick="changeImg()">换一张</a>
		 			<div class="login-bottom">
			 		  <div class="login-para">
			 			<p><a href="#"> 忘记密码 </a></p>
			 		 </div>
			 			<div class="clear"> </div>
		 			</div>
                     <input type="submit" value="登录" id="loginBtn" onclick="login()"/>
		 		</div>
		 	</div>
  </div>
  
</body>
</html>