package com.ra.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
	
	
	//添加公告
			@RequestMapping(value = "/addannouncement")
			public ModelAndView addannouncement(Announcement announcement) {
				ModelAndView mav = new ModelAndView();
				UUID uuid = UUID.randomUUID();
				String announcementID = uuid.toString();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
				announcement.setAnnouncementTime(df.format(new Date()));
				announcement.setAnnouncementID(announcementID);
				announcementService.addAnnouncement(announcement);
				mav.setViewName("allannouncement"); // 返回的文件名
				return mav;

			}
	//查找所有公告返回公告栏
		@RequestMapping(value = "/allannouncement")
		public ModelAndView allannouncement() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // 返回的文件名
			System.out.println("公告："+announcements);
			return mav;

		}
	//查找部分公告返回公告栏
		@RequestMapping(value = "/announcements")
		public ModelAndView announcements() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncementOfGeneral();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // 返回的文件名
			return mav;

		}
}
