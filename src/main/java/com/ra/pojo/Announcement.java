package com.ra.pojo;

public class Announcement {
	private String announcementID;
	private String announcementTitle;
	private String announcementContent;
	private String announcementTime;
	private String announcer;
	private String announcementRoot;

	public String getAnnouncementID() {
		return announcementID;
	}

	public void setAnnouncementID(String announcementID) {
		this.announcementID = announcementID;
	}

	public String getAnnouncementTitle() {
		return announcementTitle;
	}

	public void setAnnouncementTitle(String announcementTitle) {
		this.announcementTitle = announcementTitle;
	}

	public String getAnnouncementContent() {
		return announcementContent;
	}

	public void setAnnouncementContent(String announcementContent) {
		this.announcementContent = announcementContent;
	}

	public String getAnnouncementTime() {
		return announcementTime;
	}

	public void setAnnouncementTime(String announcementTime) {
		this.announcementTime = announcementTime;
	}

	public String getAnnouncer() {
		return announcer;
	}

	public void setAnnouncer(String announcer) {
		this.announcer = announcer;
	}

	public String getAnnouncementRoot() {
		return announcementRoot;
	}

	public void setAnnouncementRoot(String announcementRoot) {
		this.announcementRoot = announcementRoot;
	}

	@Override
	public String toString() {
		return "Announcement [announcementID=" + announcementID + ", announcementTitle=" + announcementTitle
				+ ", announcementContent=" + announcementContent + ", announcementTime=" + announcementTime
				+ ", announcer=" + announcer + ", announcementRoot=" + announcementRoot + "]";
	}
	
	public Announcement(String announcementID, String announcementTitle, String announcementContent,
			String announcementTime, String announcer, String announcementRoot) {
		super();
		this.announcementID = announcementID;
		this.announcementTitle = announcementTitle;
		this.announcementContent = announcementContent;
		this.announcementTime = announcementTime;
		this.announcer = announcer;
		this.announcementRoot = announcementRoot;
	}

	public Announcement() {
		super();
	}
}
