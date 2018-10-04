package com.ra.dao;

import java.util.List;

import com.ra.pojo.Announcement;

public interface AnnouncementDao {
	void addAnnouncement(Announcement announcement);
	void deleteAnnouncement(String announcementID);
	List<Announcement> allAnnouncement();
	List<Announcement> allAnnouncementOfGeneral();
}
