package com.ra.controller;

import java.util.Calendar;
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
 * controller�� ע��controller
 *
 */
@Controller
public class LessonController {
	@Autowired
	private LessonService lessonService;
	@Autowired
	private CourseService courseService;
	@Autowired
	private AnnouncementService announcementService;
	@Autowired
	private AddressService addressService;
	
	//�������п���γ̷��ؿ���γ̵�ҳ
	@RequestMapping(value = "/alllesson")
	public ModelAndView alllesson() {
		ModelAndView mav = new ModelAndView();
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		mav.setViewName("lesson"); // ���ص��ļ���
		return mav;

	}
	//����ĳ������γ̷��ؿ���γ�����ҳ
	@RequestMapping(value = "/lesson_show")
	public ModelAndView lesson_show(String lessonID) {
		ModelAndView mav = new ModelAndView();
		Lesson lesson = lessonService.findOneLesson(lessonID);
		mav.addObject("lesson", lesson);
		mav.setViewName("lesson_show"); // ���ص��ļ���
		return mav;

	}
	//���ҿ���γ̷��ؿ���γ̵�ҳ
	@RequestMapping(value = "/findLessonByName")
	public ModelAndView findLessonByName(String lessonName) {
		ModelAndView mav = new ModelAndView();
		List<Lesson> alllesson = lessonService.findLessonByName(lessonName);
		mav.addObject("alllesson", alllesson);
		mav.setViewName("lesson"); // ���ص��ļ���
		System.out.println(alllesson);
		return mav;

	}
	//��ӿ���γ�
	@RequestMapping(value = "/addLesson")
	public ModelAndView addLesson(Lesson lesson) {
		ModelAndView mav = new ModelAndView();
		UUID uuid = UUID.randomUUID();
		String lessonID = uuid.toString();
		lesson.setLessonID(lessonID);
		lesson.setLessonImg("res/picture/1-1g009143133218.jpg");
		Calendar cal = Calendar.getInstance();
        String day = Integer.toString(cal.get(Calendar.DATE));
        String month = Integer.toString(cal.get(Calendar.MONTH) + 1);
        String lessonDate = month+"-"+day;
        int year = cal.get(Calendar.YEAR);
        lesson.setLessonYear(Integer.toString(year));
        lesson.setLessonDate(lessonDate);
		lessonService.insertLesson(lesson);
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		List<Address> alladdress = addressService.allAddressList();
		mav.addObject("alladdress", alladdress);
		List<Announcement> announcements = announcementService.allAnnouncement();
		mav.addObject("announcements", announcements);
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		mav.setViewName("user"); // ���ص��ļ���
		return mav;

	}
	//ɾ������γ�
	@RequestMapping(value = "/deleteLesson")
	public ModelAndView deleteLesson(String lessonID) {
		ModelAndView mav = new ModelAndView();
		lessonService.deleteLesson(lessonID);;
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		List<Address> alladdress = addressService.allAddressList();
		mav.addObject("alladdress", alladdress);
		List<Announcement> announcements = announcementService.allAnnouncement();
		mav.addObject("announcements", announcements);
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		mav.setViewName("user"); // ���ص��ļ���
		return mav;

	}
			
				
	
}
