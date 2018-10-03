package com.ra.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ra.pojo.Announcement;
import com.ra.service.AnnouncementService;

/**
 * controller类 注解controller
 *
 */
@Controller
public class AnnouncementController {
	@Autowired
	private AnnouncementService announcementService;
	
	//查找所有公告返回公告页
		@RequestMapping(value = "/allannouncement")
		public ModelAndView allannouncement() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // 返回的文件名
			return mav;

		}
	//查找所有公告返回公告页
		@RequestMapping(value = "/allannouncementofgeneral")
		public ModelAndView allannouncementofgeneral() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncementOfGeneral();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // 返回的文件名
			return mav;

		}
}
