package com.ra.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ra.pojo.Address;
import com.ra.pojo.Announcement;
import com.ra.pojo.Course;
import com.ra.pojo.Lesson;
import com.ra.service.AddressService;
import com.ra.service.AnnouncementService;
import com.ra.service.CourseService;
import com.ra.service.LessonService;

/**
 * controller类 注解controller
 *
 */
@Controller
public class AnnouncementController {
	@Autowired
	private AnnouncementService announcementService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private AddressService addressService;
	@Autowired
	private LessonService lessonService;
	
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
				List<Announcement> announcements = announcementService.allAnnouncement();
				mav.addObject("announcements", announcements);
				List<Course> allcourse = courseService.allCourseList();
				mav.addObject("allcourse", allcourse);
				List<Address> alladdress = addressService.allAddressList();
				mav.addObject("alladdress", alladdress);
				List<Lesson> alllesson = lessonService.allLessonList();
				mav.addObject("alllesson", alllesson);
				mav.setViewName("user"); // 返回的文件名
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
	//查找所有公告返回公告栏
		@RequestMapping(value = "/findannouncement")
		public ModelAndView findannouncement() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			mav.setViewName("user"); // 返回的文件名
			System.out.println("公告："+announcements);
			return mav;

		}
		
	//删除某条公告
		@RequestMapping(value = "/deleteAn")
		public ModelAndView deleteAn(String announcementID) {
			ModelAndView mav = new ModelAndView();
			announcementService.deleteAnnouncement(announcementID);
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			List<Course> allcourse = courseService.allCourseList();
			mav.addObject("allcourse", allcourse);
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			List<Lesson> alllesson = lessonService.allLessonList();
			mav.addObject("alllesson", alllesson);
			mav.setViewName("user"); // 返回的文件名
			
			return mav;

		}
}
