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
 * controller�� ע��controller
 *
 */
@Controller
public class AnnouncementController {
	@Autowired
	private AnnouncementService announcementService;
	
	
	//���ӹ���
			@RequestMapping(value = "/addannouncement")
			public ModelAndView addannouncement(Announcement announcement) {
				ModelAndView mav = new ModelAndView();
				UUID uuid = UUID.randomUUID();
				String announcementID = uuid.toString();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
				announcement.setAnnouncementTime(df.format(new Date()));
				announcement.setAnnouncementID(announcementID);
				announcementService.addAnnouncement(announcement);
				mav.setViewName("allannouncement"); // ���ص��ļ���
				return mav;

			}
	//�������й��淵�ع�����
		@RequestMapping(value = "/allannouncement")
		public ModelAndView allannouncement() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // ���ص��ļ���
			System.out.println("���棺"+announcements);
			return mav;

		}
	//���Ҳ��ֹ��淵�ع�����
		@RequestMapping(value = "/announcements")
		public ModelAndView announcements() {
			ModelAndView mav = new ModelAndView();
			List<Announcement> announcements = announcementService.allAnnouncementOfGeneral();
			mav.addObject("announcements", announcements);
			mav.setViewName("announcement"); // ���ص��ļ���
			return mav;

		}
}