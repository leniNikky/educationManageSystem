package com.ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * controller�� ע��controller
 *
 */
@Controller
public class OtherController {
	//�����������ǵ�ҳ��
	@RequestMapping(value = "/about")
	public ModelAndView about() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("about"); // ���ص��ļ���
		return mav;

	}
}
