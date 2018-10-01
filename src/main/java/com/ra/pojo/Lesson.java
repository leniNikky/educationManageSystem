package com.ra.pojo;

public class Lesson {
	private String lessonID;
	private String lessonName;
	private String lessonIntro;
	private String lessonImg;
	public String getLessonID() {
		return lessonID;
	}
	public void setLessonID(String lessonID) {
		this.lessonID = lessonID;
	}
	public String getLessonName() {
		return lessonName;
	}
	public void setLessonName(String lessonName) {
		this.lessonName = lessonName;
	}
	public String getLessonIntro() {
		return lessonIntro;
	}
	public void setLessonIntro(String lessonIntro) {
		this.lessonIntro = lessonIntro;
	}
	public String getLessonImg() {
		return lessonImg;
	}
	public void setLessonImg(String lessonImg) {
		this.lessonImg = lessonImg;
	}
	@Override
	public String toString() {
		return "Lesson [lessonID=" + lessonID + ", lessonName=" + lessonName + ", lessonIntro=" + lessonIntro
				+ ", lessonImg=" + lessonImg + "]";
	}
	public Lesson(String lessonID, String lessonName, String lessonIntro, String lessonImg) {
		super();
		this.lessonID = lessonID;
		this.lessonName = lessonName;
		this.lessonIntro = lessonIntro;
		this.lessonImg = lessonImg;
	}
	public Lesson() {
		super();
	}
}
