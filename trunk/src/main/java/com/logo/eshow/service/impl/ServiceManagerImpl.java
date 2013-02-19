package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ServiceDao;
import com.logo.eshow.model.Service;
import com.logo.eshow.service.ServiceManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

@WebService(serviceName = "ServiceService", endpointInterface = "com.logo.eshow.service.ServiceManager")
public class ServiceManagerImpl extends GenericManagerImpl<Service, Integer> implements
		ServiceManager {
	ServiceDao serviceDao;

	public ServiceManagerImpl(ServiceDao serviceDao) {
		super(serviceDao);
		this.serviceDao = serviceDao;
	}

	public List<Service> list(ServiceQuery query) {
		return serviceDao.list(query);
	}

	public Page<Service> search(ServiceQuery query) {
		return serviceDao.search(query);
	}

}