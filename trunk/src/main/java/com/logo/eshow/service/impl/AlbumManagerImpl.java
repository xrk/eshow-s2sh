package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.AlbumQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.AlbumDao;
import com.logo.eshow.model.Album;
import com.logo.eshow.service.AlbumManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "AlbumService", endpointInterface = "com.logo.eshow.service.AlbumManager")
@Service
public class AlbumManagerImpl extends GenericManagerImpl<Album, Integer> implements AlbumManager {

	@Autowired
	AlbumDao albumDao;

	@Autowired
	public AlbumManagerImpl(AlbumDao albumDao) {
		super(albumDao);
		this.albumDao = albumDao;
	}

	public List<Album> list(AlbumQuery query) {
		return albumDao.list(query);
	}

	public Page<Album> search(AlbumQuery query) {
		return albumDao.search(query);
	}

}