package com.ra.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
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
public class CourseUploadController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private AnnouncementService announcementService;
	@Autowired
	private AddressService addressService;
	@Autowired
	private LessonService lessonService;
	
	//����¿γ�
	@RequestMapping(value = "/addcourse")
	public ModelAndView addcourse(Course course) {
		ModelAndView mav = new ModelAndView();
		UUID uuid = UUID.randomUUID();
		String courseID = uuid.toString();
		course.setCourseID(courseID);
		course.setCourseImg("res/picture/1-1g009143133218.jpg");
		courseService.insertCourse(course);
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		List<Announcement> announcements = announcementService.allAnnouncement();
		mav.addObject("announcements", announcements);
		List<Address> alladdress = addressService.allAddressList();
		mav.addObject("alladdress", alladdress);
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		mav.setViewName("user"); // ���ص��ļ���
		return mav;

	}

	//ɾ���γ�
	@RequestMapping(value = "/deleteCourse")
	public ModelAndView deleteCourse(String courseID) {
		ModelAndView mav = new ModelAndView();
		courseService.deleteCourse(courseID);
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		List<Announcement> announcements = announcementService.allAnnouncement();
		mav.addObject("announcements", announcements);
		List<Address> alladdress = addressService.allAddressList();
		mav.addObject("alladdress", alladdress);
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		mav.setViewName("user"); // ���ص��ļ���
		return mav;

	}
	
	//�������пγ̷��ؿγ�ҳ
	@RequestMapping(value = "/allcourse")
	public ModelAndView allcourse() {
		ModelAndView mav = new ModelAndView();
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		mav.setViewName("course"); // ���ص��ļ���
		return mav;

	}
	//����ĳ���γ̷��ؿγ�����ҳ
		@RequestMapping(value = "/course_show")
		public ModelAndView product_show(String courseID) {
			ModelAndView mav = new ModelAndView();
			Course course = courseService.findOneCourse(courseID);
			mav.addObject("course", course);
			mav.setViewName("course_show"); // ���ص��ļ���
			return mav;

		}

}
