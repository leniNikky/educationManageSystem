package com.ra.pojo;

public class User {
	private String userID;
	private String usernameEn;
	private String usernameCh;
	private String userImg;
	private String phone;
	private String email;
	private String password;
	private String userRoot;
	
	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUsernameEn() {
		return usernameEn;
	}

	public void setUsernameEn(String usernameEn) {
		this.usernameEn = usernameEn;
	}

	public String getUsernameCh() {
		return usernameCh;
	}

	public void setUsernameCh(String usernameCh) {
		this.usernameCh = usernameCh;
	}

	public String getUserImg() {
		return userImg;
	}

	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserRoot() {
		return userRoot;
	}

	public void setUserRoot(String userRoot) {
		this.userRoot = userRoot;
	}

	public User(String userID, String usernameEn, String usernameCh, String userImg, String phone, String email,
			String password, String userRoot) {
		super();
		this.userID = userID;
		this.usernameEn = usernameEn;
		this.usernameCh = usernameCh;
		this.userImg = userImg;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.userRoot = userRoot;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", usernameEn=" + usernameEn + ", usernameCh=" + usernameCh + ", userImg="
				+ userImg + ", phone=" + phone + ", email=" + email + ", password=" + password + ", userRoot="
				+ userRoot + ", getUserID()=" + getUserID() + ", getUsernameEn()=" + getUsernameEn()
				+ ", getUsernameCh()=" + getUsernameCh() + ", getUserImg()=" + getUserImg() + ", getPhone()="
				+ getPhone() + ", getEmail()=" + getEmail() + ", getPassword()=" + getPassword() + ", getUserRoot()="
				+ getUserRoot() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
}
