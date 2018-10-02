package com.ra.pojo;

public class Lesson {
	private String lessonID;
	private String lessonName;
	private String lessonIntro;
	private String lessonImg;
	private String lessonYear;
	private String lessonDate;
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
	public String getLessonYear() {
		return lessonYear;
	}
	public void setLessonYear(String lessonYear) {
		this.lessonYear = lessonYear;
	}
	public String getLessonDate() {
		return lessonDate;
	}
	public void setLessonDate(String lessonDate) {
		this.lessonDate = lessonDate;
	}
	@Override
	public String toString() {
		return "Lesson [lessonID=" + lessonID + ", lessonName=" + lessonName + ", lessonIntro=" + lessonIntro
				+ ", lessonImg=" + lessonImg + lessonYear + lessonDate + "]";
	}
	public Lesson(String lessonID, String lessonName, String lessonIntro, String lessonImg, String lessonYear, String lessonDate) {
		super();
		this.lessonID = lessonID;
		this.lessonName = lessonName;
		this.lessonIntro = lessonIntro;
		this.lessonImg = lessonImg;
		this.lessonYear = lessonYear;
		this.lessonDate = lessonDate;
	}
	public Lesson() {
		super();
	}
}
