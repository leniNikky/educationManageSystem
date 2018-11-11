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
			if (!(code.equalsIgnoreCase(session.getAttribute("code").toString()))) {  //������֤���Сд
				loginMsg = "��֤�����벻��ȷ��";
	            
	        }else {
	        	if(email==null || password==null){
	        		loginMsg = "�������˺Ż����룡";
					 }
				System.out.println(email+password+"����Controller");
				User u = userService.userLogin(email,MD5Utils.MD5(password));
				if(u!=null) {
					request.getSession().setAttribute("user", u);
					loginMsg = "loginSuccess";
				}else {
					loginMsg = "����������������";

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
	
	//���Ա������ְ��
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
		mav.addObject("msg", "��ӳɹ���");
		mav.setViewName("user"); // ���ص��ļ���
		return mav;

	}
	
	//�޸�����
		@RequestMapping(value = "/changePw")
		public @ResponseBody String changePw(String email,String changepw,String oldPw,String newPw,String confirmPw,HttpServletRequest request,HttpSession session) {
			String checkPw = "changePwSuccess";
			if(MD5Utils.MD5(oldPw)!=changepw) {
				checkPw = "ԭ�������벻��ȷ�����������룡";
			}else {
				if(newPw!=confirmPw) {
					checkPw = "�����������벻һ�£����������룡";
				}else {
					userService.changePw(MD5Utils.MD5(newPw));
					User u = userService.userLogin(email,MD5Utils.MD5(newPw));
					request.getSession().setAttribute("user", u);
				}
				
			}
			
			return checkPw;

		}

}
