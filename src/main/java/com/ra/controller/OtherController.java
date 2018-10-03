package com.ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * controller类 注解controller
 *
 */
@Controller
public class OtherController {
	//跳到关于我们的页面
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("about"); // 返回的文件名
		return mav;

	}
}
