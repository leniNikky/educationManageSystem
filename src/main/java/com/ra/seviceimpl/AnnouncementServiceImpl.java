package com.ra.seviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ra.dao.AnnouncementDao;
import com.ra.pojo.Announcement;
import com.ra.service.AnnouncementService;

@Service("AnnouncementService")
@Transactional
public class AnnouncementServiceImpl implements AnnouncementService {
	@Autowired
	private AnnouncementDao announcementDao;
	public void addAnnouncement(Announcement announcement) {
		// TODO Auto-generated method stub

	}

	public void deleteAnnouncement(String announcementID) {
		// TODO Auto-generated method stub

	}

	public List<Announcement> allAnnouncement() {
		List<Announcement> announcements = announcementDao.allAnnouncement();
		return announcements;
	}
	public List<Announcement> allAnnouncementOfGeneral(){
		List<Announcement> announcements = announcementDao.allAnnouncementOfGeneral();
		return announcements;
	}

}
