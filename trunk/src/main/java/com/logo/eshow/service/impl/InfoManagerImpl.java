package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.InfoDao;
import com.logo.eshow.model.Info;
import com.logo.eshow.service.InfoManager;
import com.logo.eshow.service.impl.GenericManagerImpl;
import javax.jws.WebService;

@WebService(serviceName = "InfoService", endpointInterface = "com.logo.eshow.service.InfoManager")
public class InfoManagerImpl extends GenericManagerImpl<Info, Integer> implements InfoManager {
	InfoDao infoDao;

	public InfoManagerImpl(InfoDao infoDao) {
		super(infoDao);
		this.infoDao = infoDao;
	}

	public List<Info> list(InfoQuery query) {
		return infoDao.list(query);
	}

	public Page<Info> search(InfoQuery query) {
		return infoDao.search(query);
	}

}