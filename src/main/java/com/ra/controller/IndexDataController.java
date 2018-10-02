package com.ra.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ra.pojo.Address;
import com.ra.pojo.Course;
import com.ra.pojo.Lesson;
import com.ra.service.AddressService;
import com.ra.service.CourseService;
import com.ra.service.LessonService;



@Controller
public class IndexDataController {
	@Autowired
	private CourseService courseService;
	@Autowired
	private LessonService lessonService;
	@Autowired
	private AddressService addressService;
	
	@RequestMapping(value = "/index")
	public ModelAndView indexData() {
		ModelAndView mav = new ModelAndView();
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		List<Lesson> alllesson = lessonService.allLessonList();
		mav.addObject("alllesson", alllesson);
		List<Address> alladdress = addressService.allAddressList();
		mav.addObject("alladdress", alladdress);
		mav.setViewName("indexdata");
		System.out.println(allcourse);
		return mav;
	}
	
}
