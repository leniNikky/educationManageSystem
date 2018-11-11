package com.ra.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ra.pojo.Address;
import com.ra.pojo.Announcement;
import com.ra.pojo.Course;
import com.ra.pojo.Lesson;
import com.ra.pojo.User;
import com.ra.service.AddressService;
import com.ra.service.AnnouncementService;
import com.ra.service.CourseService;
import com.ra.service.LessonService;
import com.ra.service.UserService;
import com.ra.util.MD5Utils;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private AnnouncementService announcementService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private AddressService addressService;
	@Autowired
	private LessonService lessonService;
	
	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public @ResponseBody String userLogin(String email, String password,String code,HttpServletRequest request,HttpSession session)

 {
		String loginMsg = "";
		ModelAndView mav = new ModelAndView();
			if (!(code.equalsIgnoreCase(session.getAttribute("code").toString()))) {  //忽略验证码大小写
				loginMsg = "验证码输入不正确！";
	            
	        }else {
	        	if(email==null || password==null){
	        		loginMsg = "请输入账号或密码！";
					 }
				System.out.println(email+password+"这是Controller");
				User u = userService.userLogin(email,MD5Utils.MD5(password));
				if(u!=null) {
					request.getSession().setAttribute("user", u);
					loginMsg = "loginSuccess";
				}else {
					loginMsg = "邮箱或密码输入错误！";

				}
				
	        }
			return loginMsg;
			
			
		

	}
	@RequestMapping(value = "/usersLogin")
	public @ResponseBody ModelAndView userLogin(HttpServletRequest request)
	
	 {		
			System.out.println("usersLogin");
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			System.out.println(announcements);
			List<Course> allcourse = courseService.allCourseList();
			mav.addObject("allcourse", allcourse);
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			List<Lesson> alllesson = lessonService.allLessonList();
			mav.addObject("alllesson", alllesson);
			mav.setViewName("user");
				return mav;
	
		}
	
	//添加员工（入职）
	@RequestMapping(value = "/addUser")
	public ModelAndView addUser(User user) {
		System.out.println("this is controller1"+user);
		ModelAndView mav = new ModelAndView();
		UUID uuid = UUID.randomUUID();
		String userID = uuid.toString();
		String password = "ra"+user.getPhone();
		user.setUserID(userID);
		user.setPassword(MD5Utils.MD5(password));
		userService.addUser(user);
		mav.addObject("msg", "添加成功！");
		mav.setViewName("user"); // 返回的文件名
		return mav;

	}
	
	//修改密码
		@RequestMapping(value = "/changePw")
		public @ResponseBody String changePw(String email,String changepw,String oldPw,String newPw,String confirmPw,HttpServletRequest request,HttpSession session) {
			String checkPw = "changePwSuccess";
			if(MD5Utils.MD5(oldPw)!=changepw) {
				checkPw = "原密码输入不正确，请重新输入！";
			}else {
				if(newPw!=confirmPw) {
					checkPw = "两次密码输入不一致，请重新输入！";
				}else {
					userService.changePw(MD5Utils.MD5(newPw));
					User u = userService.userLogin(email,MD5Utils.MD5(newPw));
					request.getSession().setAttribute("user", u);
				}
				
			}
			
			return checkPw;

		}

}
