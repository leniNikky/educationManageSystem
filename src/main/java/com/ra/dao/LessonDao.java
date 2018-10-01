package com.ra.dao;

import java.util.List;

import com.ra.pojo.Lesson;

public interface LessonDao {
	void insertLesson(Lesson lesson);
	void updateLesson(Lesson lesson);
	void deleteLesson(String lessonID);
	List<Lesson> allLessonList();
	List<Lesson> findLessonByName(String lessonName);
}
