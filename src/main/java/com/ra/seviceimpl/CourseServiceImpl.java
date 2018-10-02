package com.ra.seviceimpl;

import java.util.List;

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
		courseDao.insertCourse(course);	
	}
	public void updateCourse(Course course) {
		courseDao.updateCourse(course);
	}
	public void deleteCourse(String courseID) {
		courseDao.deleteCourse(courseID);
	}
	public List<Course> allCourseList(){
		List<Course> allcourse = courseDao.allCourseList();
		return allcourse;
	}
	public List<Course> findCourseByName(String courseName){
		List<Course> course = courseDao.findCourseByName(courseName);
		return course;
	}
	public Course findOneCourse(String courseID) {
		Course course = courseDao.findOneCourse(courseID);
		return course;
	}
}
