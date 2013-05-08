package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.ServiceTypeQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ServiceTypeDao;
import com.logo.eshow.model.ServiceType;
import com.logo.eshow.service.ServiceTypeManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "ServiceTypeService", endpointInterface = "com.logo.eshow.service.ServiceTypeManager")
@Service
public class ServiceTypeManagerImpl extends GenericManagerImpl<ServiceType, Integer> implements
		ServiceTypeManager {
	@Autowired
	ServiceTypeDao serviceTypeDao;
	
	@Autowired
	public ServiceTypeManagerImpl(ServiceTypeDao serviceTypeDao) {
		super(serviceTypeDao);
		this.serviceTypeDao = serviceTypeDao;
	}

	public List<ServiceType> list(ServiceTypeQuery query) {
		return serviceTypeDao.list(query);
	}

	public Page<ServiceType> search(ServiceTypeQuery query) {
		return serviceTypeDao.search(query);
	}

}