package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.TwitterQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.TwitterDao;
import com.logo.eshow.model.Twitter;
import com.logo.eshow.service.TwitterManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "TwitterService", endpointInterface = "com.logo.eshow.service.TwitterManager")
@Service
public class TwitterManagerImpl extends GenericManagerImpl<Twitter, Integer> implements
		TwitterManager {
	@Autowired
	TwitterDao twitterDao;

	@Autowired
	public TwitterManagerImpl(TwitterDao twitterDao) {
		super(twitterDao);
		this.twitterDao = twitterDao;
	}

	public List<Twitter> list(TwitterQuery query) {
		return twitterDao.list(query);
	}
	
	public Page<Twitter> search(TwitterQuery query) {
		return twitterDao.search(query);
	}
	
}