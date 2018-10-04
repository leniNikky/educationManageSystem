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
import com.ra.pojo.Course;
import com.ra.service.CourseService;
import com.ra.util.Upload;

/**
 * controller类 注解controller
 *
 */
@Controller
public class CourseUploadController {
	@Autowired
	private CourseService courseService;

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public ModelAndView upload() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("upload"); // 返回的文件名
		return mav;

	}

	@RequestMapping(value = "/formUpload")
	public ModelAndView formUpload(@RequestParam(required = false) MultipartFile pic, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String url = null;
		String path = request.getSession().getServletContext().getRealPath("/res/other");
		CommonsMultipartFile cf = (CommonsMultipartFile) pic;
		DiskFileItem fi = (DiskFileItem) cf.getFileItem();
		File f = fi.getStoreLocation();
		String filename = UUID.randomUUID().toString().replaceAll("-", "")
				+ pic.getOriginalFilename().substring(pic.getOriginalFilename().lastIndexOf('.'));
		try {
			url = Upload.uploader(f, path, filename);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mav.addObject("url", url);
		mav.setViewName("addSuccess"); 
		return mav;

	}

	@RequestMapping(value = "/ajaxUpload1")
	public void ajaxUpload1(@RequestParam(required = false) MultipartFile pic, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("这是图片的ajax");
		JSONObject jo = new JSONObject();
		String url = null;
		String path = request.getSession().getServletContext().getRealPath("/res/other");
		CommonsMultipartFile cf = (CommonsMultipartFile) pic;
		DiskFileItem fi = (DiskFileItem) cf.getFileItem();
		File f = fi.getStoreLocation();
		String filename = UUID.randomUUID().toString().replaceAll("-", "")
				+ pic.getOriginalFilename().substring(pic.getOriginalFilename().lastIndexOf('.'));
		if (pic.getSize() > 4000000) {
			jo.put("max", "图片无法上传，请确保大小在3MB以内。");
		} else {
			url = Upload.upload(f, path, filename);
			jo.put("url", url);
			
		}
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(jo.toString());

	}
	
	@RequestMapping(value = "/formUpload_1")
	public ModelAndView formUpload_1(Course course) {
		System.out.println("this is controller1"+course);
		ModelAndView mav = new ModelAndView();
		UUID uuid = UUID.randomUUID();
		String courseID = uuid.toString();
		course.setCourseID(courseID);
		System.out.println("this is controller"+course);
		courseService.insertCourse(course);
		mav.addObject("msg", "添加成功！");
		mav.setViewName("index"); // 返回的文件名
		return mav;

	}
	@RequestMapping(value = "/formUpload_2")
	public ModelAndView formUpload_2(Course course) {
		ModelAndView mav = new ModelAndView();
		courseService.updateCourse(course);
		mav.addObject("msg", "修改成功！");
		mav.setViewName("index"); // 返回的文件名
		return mav;

	}
	//查找所有课程返回课程页
	@RequestMapping(value = "/allcourse")
	public ModelAndView allcourse() {
		ModelAndView mav = new ModelAndView();
		List<Course> allcourse = courseService.allCourseList();
		mav.addObject("allcourse", allcourse);
		mav.setViewName("course"); // 返回的文件名
		return mav;

	}
	//查找某个课程返回课程详情页
		@RequestMapping(value = "/course_show")
		public ModelAndView product_show(String courseID) {
			ModelAndView mav = new ModelAndView();
			Course course = courseService.findOneCourse(courseID);
			mav.addObject("course", course);
			mav.setViewName("course_show"); // 返回的文件名
			return mav;

		}

}
