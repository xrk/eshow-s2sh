package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.ServiceTypeQuery;
import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.ServiceType;
import com.logo.eshow.service.ServiceTypeManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.model.Service;
import com.logo.eshow.service.ServiceManager;
import com.logo.eshow.util.PageUtil;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class ServiceTypeAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ServiceTypeManager serviceTypeManager;
	private ServiceManager serviceManager;
	private List<ServiceType> serviceTypes;
	private ServiceType serviceType;
	private ServiceTypeQuery query;

	public String list() {
		serviceTypes = serviceTypeManager.list(query);
		return LIST;
	}

	public String search() {
		Page<ServiceType> page = serviceTypeManager.search(query);
		serviceTypes = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		// 根据ID得到服务分类
		ServiceType serviceType = serviceTypeManager.get(id);
		if (serviceType != null) {
			// 查询当前服务分类的服务类别
			ServiceQuery serviceQuery = new ServiceQuery();
			serviceQuery.setServiceTypeId(id);
			// 查询出当前分类所有的服务
			List<Service> services = serviceManager.list(serviceQuery);
			// 循环每一条服务,后更改服务的ID为NULL
			for (Service service : services) {
				service.setServiceType(null);
				serviceManager.save(service);
			}
			serviceTypeManager.remove(id);
			saveMessage("删除成功");
		}
		return LIST;
	}

	public String view() {
		if (id != null) {
			serviceType = serviceTypeManager.get(id);
		} else {
			return INDEX;

		}
		return NONE;
	}

	public String update() throws Exception {
		ServiceType old = serviceTypeManager.get(id);
		old.setName(serviceType.getName());
		old.setRemark(serviceType.getRemark());
		serviceTypeManager.save(old);
		saveMessage("修改成功");
		return LIST;
	}

	public String save() throws Exception {
		serviceTypeManager.save(serviceType);
		saveMessage("添加成功");
		return LIST;
	}

	public ServiceTypeManager getServiceTypeManager() {
		return serviceTypeManager;
	}

	public void setServiceTypeManager(ServiceTypeManager serviceTypeManager) {
		this.serviceTypeManager = serviceTypeManager;
	}

	public List<ServiceType> getServiceTypes() {
		return serviceTypes;
	}

	public void setServiceTypes(List<ServiceType> serviceTypes) {
		this.serviceTypes = serviceTypes;
	}

	public ServiceType getServiceType() {
		return serviceType;
	}

	public void setServiceType(ServiceType serviceType) {
		this.serviceType = serviceType;
	}

	public ServiceTypeQuery getQuery() {
		return query;
	}

	public void setQuery(ServiceTypeQuery query) {
		this.query = query;
	}

}