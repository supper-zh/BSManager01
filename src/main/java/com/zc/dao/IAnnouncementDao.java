package com.zc.dao;

import com.zc.entity.Announcement;

import java.util.List;

/**
 * @date 2018-4-17
 * @author zhangC
 * 添加公告
 * 删除公告
 * 查看公告 按时间最新优先的顺序
 *
 */

public interface IAnnouncementDao {
	
	int addAnnouncement(Announcement announcement);
	
	int deleteAnnouncement(int id);
	
	List<Announcement> showAllAnnouncement();
}
