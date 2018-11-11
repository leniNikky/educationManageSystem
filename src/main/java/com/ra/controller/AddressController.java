package com.ra.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.ra.pojo.Address;
import com.ra.pojo.Announcement;
import com.ra.pojo.Course;
import com.ra.pojo.Lesson;
import com.ra.service.AddressService;
import com.ra.service.AnnouncementService;
import com.ra.service.CourseService;
import com.ra.service.LessonService;
import com.ra.util.Upload;

/**
 * controller�� ע��controller
 *
 */
@Controller
public class AddressController {
	@Autowired
	private AddressService addressService;
	@Autowired
	private AnnouncementService announcementService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private LessonService lessonService;
	
		//�������н�ѧ�㷵�ؽ�ѧ��ҳ
		@RequestMapping(value = "/alladdress")
		public ModelAndView alladdress() {
			ModelAndView mav = new ModelAndView();
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			mav.setViewName("address"); // ���ص��ļ���
			return mav;

		}
		//����ĳ����ѧ�㷵�ؽ�ѧ������ҳ
		@RequestMapping(value = "/address_show")
		public ModelAndView address_show(String addressID) {
			ModelAndView mav = new ModelAndView();
			Address address = addressService.findOneAddress(addressID);
			mav.addObject("address", address);
			mav.setViewName("address_show"); // ���ص��ļ���
			return mav;

		}
		
		//��ӽ�ѧ��
		@RequestMapping(value = "/addAddress")
		public ModelAndView addAddress(Address address) {
			ModelAndView mav = new ModelAndView();
			UUID uuid = UUID.randomUUID();
			String addressID = uuid.toString();
			address.setAddressID(addressID);
			address.setAddressImg("res/picture/1-1f92z942410-l.jpg");
			System.out.println(address);
			addressService.insertAddress(address);
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			List<Course> allcourse = courseService.allCourseList();
			mav.addObject("allcourse", allcourse);
			List<Lesson> alllesson = lessonService.allLessonList();
			mav.addObject("alllesson", alllesson);
			mav.setViewName("user"); // ���ص��ļ���
			return mav;

		}
		
		//ɾ����ѧ��
		@RequestMapping(value = "/deleteAddress")
		public ModelAndView deleteAddress(String addressID) {
			ModelAndView mav = new ModelAndView();
			addressService.deleteAddress(addressID);
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			List<Announcement> announcements = announcementService.allAnnouncement();
			mav.addObject("announcements", announcements);
			List<Course> allcourse = courseService.allCourseList();
			mav.addObject("allcourse", allcourse);
			List<Lesson> alllesson = lessonService.allLessonList();
			mav.addObject("alllesson", alllesson);
			mav.setViewName("user"); // ���ص��ļ���
			return mav;

		}
}
