package com.ra.seviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ra.dao.CourseDao;
import com.ra.pojo.Course;
import com.ra.service.CourseService;
@Service("CourseService")
@Transactional
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDao courseDao;
	public void insertCourse(Course course){
		System.out.println("this is service"+course);
		courseDao.insertCourse(course);
		
	}
	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}
}
