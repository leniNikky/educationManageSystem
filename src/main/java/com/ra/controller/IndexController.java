package com.ra.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ra.service.CourseService;



@Controller
public class IndexController {
	@Autowired
	private CourseService courseService;
	
}
