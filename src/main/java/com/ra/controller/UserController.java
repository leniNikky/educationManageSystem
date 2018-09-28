package com.ra.controller;

import java.util.HashMap;
import java.util.Map;

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
import com.ra.pojo.User;
import com.ra.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
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
				User u = userService.userLogin(email,password);
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
			mav.setViewName("user");
				return mav;
	
		}
}
