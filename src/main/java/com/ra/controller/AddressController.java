package com.ra.controller;

import java.io.File;
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
import com.ra.pojo.Course;
import com.ra.service.AddressService;
import com.ra.util.Upload;

/**
 * controller类 注解controller
 *
 */
@Controller
public class AddressController {
	@Autowired
	private AddressService addressService;
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
			url = Upload.uploader(f, path, filename);
			jo.put("url", url);
			
		}
		response.setContentType("application/json;charset=UTF-8");
		response.getWriter().write(jo.toString());

	}
	
	@RequestMapping(value = "/addressUpload_1")
	public ModelAndView addressUpload(Address address) {
		System.out.println("this is controller1"+address);
		ModelAndView mav = new ModelAndView();
		UUID uuid = UUID.randomUUID();
		String addressID = uuid.toString();
		address.setAddressID(addressID);
		System.out.println("this is controller"+address);
		addressService.insertAddress(address);
		mav.addObject("msg", "添加成功！");
		mav.setViewName("index"); // 返回的文件名
		return mav;

	}
	

}
