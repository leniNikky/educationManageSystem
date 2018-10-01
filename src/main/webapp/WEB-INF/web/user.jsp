<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Reading Academy</title>
	
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="res/css/demo.css">
	<link rel="stylesheet" href="res/assets/css/jquery.mCustomScrollbar.min.css" />
    <link rel="stylesheet" href="res/assets/css/custom.css">
    <link rel="stylesheet" type="text/css" href="res/css/newstyle.css">
</head>

<body>
<div class="page-wrapper" id="personalpage">
            <nav id="sidebar" class="sidebar-wrapper">
              <div class="sidebar-content">
                <a href="#" id="toggle-sidebar"><i class="fa fa-bars"></i></a>
                <div class="sidebar-brand">
                    <a href="index.jsp">返回首页</a>
                </div>
                <div class="sidebar-header">
                    <div class="user-pic">
                        <img class="img-responsive img-rounded" src="${user.userImg }" alt="">
                    </div>
                    <div class="user-info">
                        <span class="user-name">${user.usernameEn } <strong>${user.usernameCh }</strong></span>
                        <span class="user-role">${user.userRoot }</span>
                        <div class="user-status">                       
                            <a href="#"><span class="label label-success">Online</span></a>                           
                        </div>
                    </div>
                </div><!-- sidebar-header  -->
                <div class="sidebar-search">
                    <div>                   
                        <div class="input-group">                          
                            <input type="text" class="form-control search-menu" placeholder="Search for...">
                            <span class="input-group-addon"><i class="fa fa-search"></i></span>
                        </div>
                    </div>                    
                </div><!-- sidebar-search  -->
                <div class="sidebar-menu">
                    <ul>
                        <li class="header-menu"><span>系统管理</span></li>
                        <li class="sidebar-dropdown">
                            <a  href="#"><i class="fa fa-tv"></i><span>课件管理</span><span class="label label-danger">New</span></a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li class="left-nav-item1"><a href="#" data-target="one">上传课件<span class="label label-success">10</span></a> </li>
                                    <li class="left-nav-item1"><a href="#" data-target="two">所有课件</a></li>
                                    <li class="left-nav-item1"><a href="#">课件分类</a></li>
                                </ul>
                            </div>
                        </li>                  
                        <li class="sidebar-dropdown">
                            <a href="#"><i class="fa fa-photo"></i><span>课程管理</span><span class="badge">3</span></a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li class="left-nav-item2"><a href="#">添加课程<span class="badge">2</span></a></li>
                                    <li class="left-nav-item2"><a href="#">所有课程</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#"><i class="fa fa-bar-chart-o"></i><span>教学点设置</span></a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li class="left-nav-item3"><a href="#">添加教学点</a></li>
                                    <li class="left-nav-item3"><a href="#">所有教学点</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#"><i class="fa fa-bar-chart-o"></i><span>开课通知</span></a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li class="left-nav-item4"><a href="#">添加开课</a></li>
                                    <li class="left-nav-item4"><a href="#">所有开课</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#"><i class="fa fa-diamond"></i><span>员工管理</span></a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li class="left-nav-item5"><a href="#">入职办理</a></li>
                                    <li class="left-nav-item5"><a href="#">工资单</a></li>
                                    <li class="left-nav-item5"><a href="#">离职办理</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="header-menu"><span>个人操作</span></li>
                        <li class="left-nav-item6"><a href="#"><i class="fa fa-tv"></i><span>修改个人信息</span></a></li>                   
                        <li class="left-nav-item7"><a href="#"><i class="fa fa-photo"></i><span>修改密码</span></a></li>
                    </ul>
                   </div><!-- sidebar-menu  -->            
                </div><!-- sidebar-content  -->
        
                <div class="sidebar-footer">
                    <!-- <a href="#"><i class="fa fa-bell"></i><span class="label label-warning notification">3</span></a>
                    <a href="#"><i class="fa fa-envelope"></i><span class="label label-success notification">7</span></a>
                    <a href="#"><i class="fa fa-gear"></i></a> -->
                    <a href="#"><i class="fa fa-power-off"></i></a>
                </div>
            </nav><!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid right-nav-content" id="userNotice">
                	<header class="header">
						<h1>本网站所有文件资源均属于RA公司所有，<span>未经许可禁止在非本公司工作需要的情况下使用，违者必究！</span></h1>
					</header>
					<h1 style="text-align:center;">Reading Academy</h1>
					<h3 style="text-align:center;">点击左上角的 <i class="fa fa-bars"></i> 按钮即可进行用户操作</h3>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>上传课件</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>所有课件</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>课件分类</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>添加课程</h1>
                        </header>
                        <hr class="title-hr">
                        <form action="/formUpload_1" id="ajform" method="post">
	                        <label>课程名：</label>
	                        <input type="text" class="form-control" name="courseName">
	                        <label>课程介绍：</label>
	                        <textarea class="form-control" rows="5" name="courseIntro"></textarea>
	                        <label>课程封面：</label>
	                        <input type="file" name="pic" onchange="uploadPic1('pic','ajform')"> 
						    <input type="hidden" name="courseImg" value="" id="picInput">
						    <img alt="" src="" id="pic" width=50 height=50>
						    <button class="btn btn-primary addcoursebtn" type="submit">添加</button>
						    <button class="btn btn-default addcoursebtn" type="reset">取消</button>
    					</form>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>所有课程</h1>
                        </header>
                        <hr class="title-hr">
                        
                </div>
               
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>添加教学点</h1>
                        </header>
                        <hr class="title-hr">
                        <form action="/addressUpload_1" id="addressform" method="post">
	                        <label>教学点名称：</label>
	                        <input type="text" class="form-control" name="addressName">
	                        <label>教学点介绍：</label>
	                        <textarea class="form-control" rows="5" name="addressIntro"></textarea>
	                        <label>教学点联系方式：</label>
	                        <input type="text" class="form-control" name="addressPhone">
	                        <label>教学点照片：</label>
	                        <input type="file" name="pic" onchange="uploadPic1('pic','ajform')"> 
						    <input type="hidden" name="addressImg" value="" id="picInput">
						    <img alt="" src="" id="pic" width=50 height=50>
						    <button class="btn btn-primary addcoursebtn" type="submit">添加</button>
						    <button class="btn btn-default addcoursebtn" type="reset">取消</button>
    					</form>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>所有教学点</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>入职办理</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>工资单</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>离职办理</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>修改个人信息</h1>
                        </header>
                </div>
                <div class="container-fluid right-nav-content">
                        <header class="header">
                            <h1>修改密码</h1>
                        </header>
                </div>
            </main><!-- page-content" -->
        </div><!-- page-wrapper -->
	
	
		<script src="res/js/jquery-1.9.1.min.js" type="text/javascript"></script>
		<script src="res/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="res/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
		<script src="res/assets/js/custom.js"></script>
		<script>
function uploadPic1(id, formid) {
	//上传图片 异步
	$ajax({
		url : "/ajaxUpload1",
		type : "post",
		dataType : "json",
		success : function(data) {
			if (data.max != null) {
				alert(data.max);
			} else {
				$("#" + id).attr('src', data.url);
				alert(data.url);
				$("#" + id + "Input").attr('value', data.url);
			}
		}
	})
	$("#" + formid).ajaxSubmit(options);
}

</script>
</body>
</html>