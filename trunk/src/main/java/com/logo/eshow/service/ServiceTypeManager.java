package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ServiceTypeQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.ServiceType;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ServiceTypeManager extends GenericManager<ServiceType, Integer> {

	List<ServiceType> list(ServiceTypeQuery query);

	Page<ServiceType> search(ServiceTypeQuery query);
}