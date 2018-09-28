 jQuery(function($) {
        
        $(".sidebar-dropdown > a").click(function(){
	        $(".sidebar-submenu").slideUp(250);
        	if ($(this).parent().hasClass("active")){
 		         $(".sidebar-dropdown").removeClass("active");
 		         $(this).parent().removeClass("active");
        	}else{
        		$(".sidebar-dropdown").removeClass("active");
        		$(this).next(".sidebar-submenu").slideDown(250);
        	 	$(this).parent().addClass("active");
        	}

        });

         $("#toggle-sidebar").click(function(){
	         $(".page-wrapper").toggleClass("toggled");	    
       	 });

           if(! /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                   $(".sidebar-content").mCustomScrollbar({
                            axis:"y",
                            autoHideScrollbar: true,
                            scrollInertia: 300
                    });
                    $(".sidebar-content").addClass("desktop");

            };
        $(".right-nav-content").hide().eq(0).show();
        $(".left-nav-item1").click(function() {
                $(".right-nav-content").eq($(this).index()+1).show().siblings("div").hide();
        });
        $(".left-nav-item2").click(function() {
                $(".right-nav-content").eq($(this).index()+4).show().siblings("div").hide();
        });
        $(".left-nav-item3").click(function() {
                $(".right-nav-content").eq($(this).index()+7).show().siblings("div").hide();
        });
        $(".left-nav-item4").click(function() {
                $(".right-nav-content").eq($(this).index()+9).show().siblings("div").hide();
        });
        $(".left-nav-item5").click(function() {
                $(".right-nav-content").eq($(this).index()+12).show().siblings("div").hide();
        });
        $(".left-nav-item6").click(function() {
                $(".right-nav-content").eq($(this).index()+13).show().siblings("div").hide();
        });
        


    });