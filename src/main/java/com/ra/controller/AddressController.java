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
		//查找所有教学点返回教学点页
		@RequestMapping(value = "/alladdress")
		public ModelAndView alladdress() {
			ModelAndView mav = new ModelAndView();
			List<Address> alladdress = addressService.allAddressList();
			mav.addObject("alladdress", alladdress);
			mav.setViewName("address"); // 返回的文件名
			return mav;

		}
		//查找某个课程返回课程详情页
			@RequestMapping(value = "/address_show")
			public ModelAndView address_show(String addressID) {
				ModelAndView mav = new ModelAndView();
				Address address = addressService.findOneAddress(addressID);
				mav.addObject("address", address);
				mav.setViewName("address_show"); // 返回的文件名
				return mav;

			}

}
