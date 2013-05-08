package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.TopicQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.TopicDao;
import com.logo.eshow.model.Topic;
import com.logo.eshow.service.TopicManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "TopicService", endpointInterface = "com.logo.eshow.service.TopicManager")
@Service
public class TopicManagerImpl extends GenericManagerImpl<Topic, Integer>
		implements TopicManager {
	@Autowired
	TopicDao topicDao;

	@Autowired
	public TopicManagerImpl(TopicDao topicDao) {
		super(topicDao);
		this.topicDao = topicDao;
	}

	public List<Topic> list(TopicQuery query) {
		return topicDao.list(query);
	}

	public Page<Topic> search(TopicQuery query) {
		return topicDao.search(query);
	}
	
}