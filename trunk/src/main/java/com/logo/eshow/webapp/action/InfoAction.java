package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.model.Info;
import com.logo.eshow.service.InfoManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.PageUtil;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class InfoAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private InfoManager infoManager;
	private List<Info> infos;
	private Info info;
	private InfoQuery query;

	public String list() {
		infos = infoManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Info> page = infoManager.search(query);
		infos = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public void delete() {
		info = infoManager.get(id);
		if (info != null) {
			info.setEnabled(Boolean.FALSE);
			success("删除成功");
		} else {
			failure("参数不正确");
		}
	}

	public String view() {
		if (id != null) {
			info = infoManager.get(id);
		}
		return NONE;
	}

	public String browse() {
		info = infoManager.browse(query);
		return NONE;
	}

	public String update() throws Exception {
		Info old = infoManager.get(id);
		old.setTitle(info.getTitle());
		old.setContent(info.getContent());
		old.setUrl(info.getUrl());
		infoManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		info = infoManager.save(info);
		id = info.getId();
		saveMessage("添加成功");
		return SUCCESS;
	}

	public InfoManager getInfoManager() {
		return infoManager;
	}

	public void setInfoManager(InfoManager infoManager) {
		this.infoManager = infoManager;
	}

	public List<Info> getInfos() {
		return infos;
	}

	public void setInfos(List<Info> infos) {
		this.infos = infos;
	}

	public Info getInfo() {
		return info;
	}

	public void setInfo(Info info) {
		this.info = info;
	}

	public InfoQuery getQuery() {
		return query;
	}

	public void setQuery(InfoQuery query) {
		this.query = query;
	}

}