package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.model.Thumb;
import com.logo.eshow.service.ThumbManager;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.PageUtil;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class ThumbAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ThumbManager thumbManager;
	private List<Thumb> thumbs;
	private Thumb thumb;
	private ThumbQuery query;

	public String list() {
		thumbs = thumbManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Thumb> page = thumbManager.search(query);
		thumbs = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		thumbManager.remove(id);
		saveMessage("删除成功");
		return LIST;
	}

	public String view() {
		if (id != null) {
			thumb = thumbManager.get(id);
		} else {
			thumb = new Thumb();
		}
		return SUCCESS;
	}

	public String update() throws Exception {
		Thumb old = thumbManager.get(id);
		old.setName(thumb.getName());
		old.setModel(thumb.getModel());
		old.setHeight(thumb.getHeight());
		old.setWidth(thumb.getWidth());
		old.setDescription(thumb.getDescription());
		thumbManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		thumb = thumbManager.save(thumb);
		id = thumb.getId();
		saveMessage("添加成功");
		return SUCCESS;
	}

	public ThumbManager getThumbManager() {
		return thumbManager;
	}

	public void setThumbManager(ThumbManager thumbManager) {
		this.thumbManager = thumbManager;
	}

	public void setThumbs(List<Thumb> thumbs) {
		this.thumbs = thumbs;
	}

	public List<Thumb> getThumbs() {
		return thumbs;
	}

	public Thumb getThumb() {
		return thumb;
	}

	public void setThumb(Thumb thumb) {
		this.thumb = thumb;
	}

	public ThumbQuery getQuery() {
		return query;
	}

	public void setQuery(ThumbQuery query) {
		this.query = query;
	}

}