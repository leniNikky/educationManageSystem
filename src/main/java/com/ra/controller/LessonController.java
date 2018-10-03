package com.ra.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ra.pojo.Lesson;
import com.ra.service.LessonService;

/**
 * controller�� ע��controller
 *
 */
@Controller
public class LessonController {
	@Autowired
	private LessonService lessonService;
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
			
				
	
}
