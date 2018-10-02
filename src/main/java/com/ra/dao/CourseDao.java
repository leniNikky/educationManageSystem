package com.ra.dao;

import java.util.List;

import com.ra.pojo.Course;

public interface CourseDao {
	void insertCourse(Course course);
	void updateCourse(Course course);
	void deleteCourse(String courseID);
	List<Course> allCourseList();
	List<Course> findCourseByName(String courseName);
	Course findOneCourse(String courseID);
}
