package com.ra.service;

import java.util.List;

import com.ra.pojo.Announcement;

public interface AnnouncementService {
	public void addAnnouncement(Announcement announcement);
	public void deleteAnnouncement(String announcementID);
	public List<Announcement> allAnnouncement();
	public List<Announcement> allAnnouncementOfGeneral();
}
