package com.ra.pojo;

public class Course {
	private String courseID;
	private String courseName;
	private String courseIntro;
	private String courseImg;
	public String getCourseID() {
		return courseID;
	}
	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getCourseIntro() {
		return courseIntro;
	}
	public void setCourseIntro(String courseIntro) {
		this.courseIntro = courseIntro;
	}
	public String getCourseImg() {
		return courseImg;
	}
	public void setCourseImg(String courseImg) {
		this.courseImg = courseImg;
	}
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", courseName=" + courseName + ", courseIntro=" + courseIntro
				+ ", courseImg=" + courseImg + "]";
	}
	public Course(String courseID, String courseName, String courseIntro, String courseImg) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.courseIntro = courseIntro;
		this.courseImg = courseImg;
	}
	public Course() {
		super();
	}
}
