package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.PhotoQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.PhotoDao;
import com.logo.eshow.model.Photo;
import com.logo.eshow.service.PhotoManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "PhotoService", endpointInterface = "com.logo.eshow.service.PhotoManager")
@Service
public class PhotoManagerImpl extends GenericManagerImpl<Photo, Integer> implements PhotoManager {
	@Autowired
	PhotoDao photoDao;

	@Autowired
	public PhotoManagerImpl(PhotoDao photoDao) {
		super(photoDao);
		this.photoDao = photoDao;
	}

	public List<Photo> list(PhotoQuery query) {
		return photoDao.list(query);
	}

	public Page<Photo> search(PhotoQuery query) {
		return photoDao.search(query);
	}
}