package com.ra.service;

import java.util.List;

import com.ra.pojo.Course;

public interface CourseService {
	public void insertCourse(Course course);
	public void updateCourse(Course course);
	public void deleteCourse(String courseID);
	public List<Course> allCourseList();
	public List<Course> findCourseByName(String courseName);
	public Course findOneCourse(String courseID);
}
