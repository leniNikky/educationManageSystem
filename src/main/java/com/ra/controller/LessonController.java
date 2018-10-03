package com.ra.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ra.pojo.Lesson;
import com.ra.service.LessonService;

/**
 * controller类 注解controller
 *
 */
@Controller
public class LessonController {
	@Autowired
	private LessonService lessonService;
			//查找所有开班课程返回开班课程点页
			@RequestMapping(value = "/alllesson")
			public ModelAndView alllesson() {
				ModelAndView mav = new ModelAndView();
				List<Lesson> alllesson = lessonService.allLessonList();
				mav.addObject("alllesson", alllesson);
				mav.setViewName("lesson"); // 返回的文件名
				return mav;

			}
			//查找某个开班课程返回开班课程详情页
			@RequestMapping(value = "/lesson_show")
			public ModelAndView lesson_show(String lessonID) {
				ModelAndView mav = new ModelAndView();
				Lesson lesson = lessonService.findOneLesson(lessonID);
				mav.addObject("lesson", lesson);
				mav.setViewName("lesson_show"); // 返回的文件名
				return mav;

			}
			//查找开班课程返回开班课程点页
			@RequestMapping(value = "/findLessonByName")
			public ModelAndView findLessonByName(String lessonName) {
				ModelAndView mav = new ModelAndView();
				List<Lesson> alllesson = lessonService.findLessonByName(lessonName);
				mav.addObject("alllesson", alllesson);
				mav.setViewName("lesson"); // 返回的文件名
				System.out.println(alllesson);
				return mav;

			}
			
				
	
}
