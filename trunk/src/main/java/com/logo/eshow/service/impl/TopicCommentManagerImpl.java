package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.TopicCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.TopicCommentDao;
import com.logo.eshow.model.TopicComment;
import com.logo.eshow.service.TopicCommentManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "TopicCommentService", endpointInterface = "com.logo.eshow.service.TopicCommentManager")
@Service
public class TopicCommentManagerImpl extends GenericManagerImpl<TopicComment, Integer> implements
		TopicCommentManager {
	@Autowired
	TopicCommentDao topicCommentDao;

	@Autowired
	public TopicCommentManagerImpl(TopicCommentDao topicCommentDao) {
		super(topicCommentDao);
		this.topicCommentDao = topicCommentDao;
	}

	public List<TopicComment> list(TopicCommentQuery query) {
		return topicCommentDao.list(query);
	}

	public Page<TopicComment> search(TopicCommentQuery query) {
		return topicCommentDao.search(query);
	}

}