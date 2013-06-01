package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.components.upyun.UpYunUtil;
import com.logo.eshow.model.Service;
import com.logo.eshow.service.ServiceManager;
import com.logo.eshow.service.ServiceTypeManager;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class ServiceAction extends BaseFileUploadAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private ServiceManager serviceManager;
	@Autowired
	private ServiceTypeManager serviceTypeManager;
	private List<Service> services;
	private Service service;
	private ServiceQuery query;
	private Integer serviceTypeId;

	public String list() {
		services = serviceManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Service> page = serviceManager.search(query);
		services = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		serviceManager.remove(id);
		saveMessage("删除成功");
		return "delete";
	}

	public String view() {
		if (id != null) {
			service = serviceManager.get(id);
		}
		return NONE;
	}

	public String update() throws Exception {
		Service old = serviceManager.get(id);
		old.setTitle(service.getTitle());
		old.setContent(service.getContent());
		if (serviceTypeId != null) {
			old.setServiceType(serviceTypeManager.get(serviceTypeId));
		}
		if (file != null) {
			old.setImg(UpYunUtil.upload(file));
		}
		serviceManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		service.setAddTime(new Date());
		service.setUpdateTime(new Date());
		if (serviceTypeId != null) {
			service.setServiceType(serviceTypeManager.get(serviceTypeId));
		}
		service.setUser(getSessionUser());
		if (file != null) {
			service.setImg(UpYunUtil.upload(file));
		}
		service = serviceManager.save(service);
		saveMessage("添加成功");
		id = service.getId();
		return SUCCESS;
	}

	public ServiceManager getServiceManager() {
		return serviceManager;
	}

	public void setServiceManager(ServiceManager serviceManager) {
		this.serviceManager = serviceManager;
	}

	public ServiceTypeManager getServiceTypeManager() {
		return serviceTypeManager;
	}

	public void setServiceTypeManager(ServiceTypeManager serviceTypeManager) {
		this.serviceTypeManager = serviceTypeManager;
	}

	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public ServiceQuery getQuery() {
		return query;
	}

	public void setQuery(ServiceQuery query) {
		this.query = query;
	}

	public Integer getServiceTypeId() {
		return serviceTypeId;
	}

	public void setServiceTypeId(Integer serviceTypeId) {
		this.serviceTypeId = serviceTypeId;
	}

}