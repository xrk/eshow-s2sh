package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Service;
import com.logo.eshow.model.Thumb;
import com.logo.eshow.service.ServiceManager;
import com.logo.eshow.service.ServiceTypeManager;
import com.logo.eshow.service.ThumbManager;
import com.logo.eshow.util.DateUtil;
import com.logo.eshow.util.ImageUtil;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class ServiceAction extends BaseFileUploadAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ServiceManager serviceManager;
	private ServiceTypeManager serviceTypeManager;
	private ThumbManager thumbManager;
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
		return LIST;
	}

	public String view() {
		if (id != null) {
			service = serviceManager.get(id);
		} else {
			return INDEX;

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
			String path = "upload/service/" + DateUtil.getDateTime("yyyyMMdd", old.getAddTime())
					+ "/";
			ImageUtil.uploadImage(path, old.getId().toString(), file);
			old.setImg(old.getId() + ".jpg");
			// 根据缩略图规则进行缩略图生成
			ThumbQuery thumbQuery = new ThumbQuery();
			thumbQuery.setModel("photo");
			List<Thumb> list = thumbManager.list(thumbQuery);
			for (Thumb thumb : list) {
				ImageUtil.resizeImage(path + "view/" + old.getId() + "-" + thumb.getWidth() + "-"
						+ thumb.getHeight() + ".jpg", path + "orig/" + old.getId() + ".jpg",
						thumb.getWidth(), thumb.getHeight(), thumb.getType());
			}
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
		service = serviceManager.save(service);
		if (file != null) {
			String path = "upload/service/"
					+ DateUtil.getDateTime("yyyyMMdd", service.getAddTime()) + "/";
			ImageUtil.uploadImage(path, service.getId().toString(), file);
			service.setImg(service.getId() + ".jpg");
			// 根据缩略图规则进行缩略图生成
			ThumbQuery thumbQuery = new ThumbQuery();
			thumbQuery.setModel("service");
			List<Thumb> list = thumbManager.list(thumbQuery);
			for (Thumb thumb : list) {
				ImageUtil.resizeImage(path + "view/" + service.getId() + "-" + thumb.getWidth()
						+ "-" + thumb.getHeight() + ".jpg", path + "orig/" + service.getId()
						+ ".jpg", thumb.getWidth(), thumb.getHeight(), thumb.getType());
			}
			serviceManager.save(service);
		}

		saveMessage("添加成功");
		id = service.getId();
		return LIST;
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

	public ThumbManager getThumbManager() {
		return thumbManager;
	}

	public void setThumbManager(ThumbManager thumbManager) {
		this.thumbManager = thumbManager;
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