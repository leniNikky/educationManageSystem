package com.ra.service;

import java.util.List;

import com.ra.pojo.Lesson;

public interface LessonService {
	public void insertLesson(Lesson lesson);
	public void updateLesson(Lesson lesson);
	public void deleteLesson(String lessonID);
	public List<Lesson> allLessonList();
	public List<Lesson> findLessonByName(String lessonName);
	public Lesson findOneLesson(String lessonID);
}
