package com.ra.controller;

import java.util.HashMap;
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
import com.ra.pojo.Course;
import com.ra.pojo.User;
import com.ra.service.UserService;
import com.ra.util.MD5Utils;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
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
}
