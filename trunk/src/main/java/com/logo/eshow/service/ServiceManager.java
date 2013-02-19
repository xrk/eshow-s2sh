package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Service;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ServiceManager extends GenericManager<Service, Integer> {

	List<Service> list(ServiceQuery query);

	Page<Service> search(ServiceQuery query);

}