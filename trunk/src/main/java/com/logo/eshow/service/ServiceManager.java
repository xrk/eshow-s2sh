package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Service;
import com.logo.eshow.model.ServiceType;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ServiceManager extends GenericManager<Service, Integer> {

	List<Service> list(ServiceQuery query);

	Page<Service> search(ServiceQuery query);

	/**
	 * 修改服务列表的服务类型
	 * 
	 * @param services
	 * @param serviceType
	 */
	void update(List<Service> services, ServiceType serviceType);

	/**
	 * 修改当前服务类型的服务列表类型为NULL
	 * 
	 * @param services
	 * @param serviceType
	 */
	void update(Integer serviceTypeId);

}