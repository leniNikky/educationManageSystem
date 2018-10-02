package com.ra.seviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ra.dao.LessonDao;
import com.ra.pojo.Lesson;
import com.ra.service.LessonService;
@Service("LessonService")
@Transactional
public class LessonServiceImpl implements LessonService {
	@Autowired
	private LessonDao lessonDao;
	public void insertLesson(Lesson lesson) {
		// TODO Auto-generated method stub

	}

	public void updateLesson(Lesson lesson) {
		// TODO Auto-generated method stub

	}

	public void deleteLesson(String lessonID) {
		// TODO Auto-generated method stub

	}

	public List<Lesson> allLessonList() {
		List<Lesson> alllesson = lessonDao.allLessonList();
		return alllesson;
	}

	public List<Lesson> findLessonByName(String lessonName) {
		List<Lesson> lesson = lessonDao.findLessonByName(lessonName);
		return lesson;
	}

}
