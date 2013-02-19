package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ThumbDao;
import com.logo.eshow.model.Thumb;
import com.logo.eshow.service.ThumbManager;
import com.logo.eshow.service.impl.GenericManagerImpl;
import javax.jws.WebService;

@WebService(serviceName = "ThumbService", endpointInterface = "com.logo.eshow.service.ThumbManager")
public class ThumbManagerImpl extends GenericManagerImpl<Thumb, Integer>
		implements ThumbManager {
	ThumbDao thumbDao;

	public ThumbManagerImpl(ThumbDao thumbDao) {
		super(thumbDao);
		this.thumbDao = thumbDao;
	}

	public List<Thumb> list(ThumbQuery query) {
		return thumbDao.list(query);
	}

	public Page<Thumb> search(ThumbQuery query) {
		return thumbDao.search(query);
	}

}