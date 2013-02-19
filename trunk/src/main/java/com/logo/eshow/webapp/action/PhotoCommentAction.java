package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.PhotoCommentQuery;
import com.logo.eshow.model.Photo;
import com.logo.eshow.model.PhotoComment;
import com.logo.eshow.service.PhotoCommentManager;
import com.logo.eshow.service.PhotoManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.CommonVar;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.CommonUtil;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class PhotoCommentAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PhotoCommentManager photoCommentManager;
	private PhotoManager photoManager;
	private List<PhotoComment> photoComments;
	private PhotoComment photoComment;
	private PhotoCommentQuery query;
	private Integer photoId;

	public String list() {
		photoComments = photoCommentManager.list(query);
		return LIST;
	}

	public String search() {
		Page<PhotoComment> page = photoCommentManager.search(query);
		photoComments = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		PhotoComment old = photoCommentManager.get(id);
		if (old != null) {
			if (old.getPhoto().getUser().equals(getSessionUser())
					|| old.getUser().equals(getSessionUser())) {
				Photo photo = old.getPhoto();
				photo.setCommentSize(photo.getCommentSize() - CommonVar.STEP);
				photoManager.save(photo);
				photoCommentManager.remove(id);
				saveMessage("删除成功");

			} else {
				saveMessage("无权删除");
			}

		}
		return LIST;
	}

	public String view() {
		if (id != null) {
			photoComment = photoCommentManager.get(id);
		} else {
			photoComment = new PhotoComment();
		}
		return NONE;
	}

	public String update() throws Exception {
		PhotoComment old = photoCommentManager.get(id);
		old.setContent(photoComment.getContent());
		photoCommentManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		photoComment.setAddTime(new Date());
		photoComment.setUser(getSessionUser());
		Photo photo = photoManager.get(photoId);
		photo.setCommentSize(CommonUtil.count(photo.getCommentSize()));
		photoComment.setPhoto(photo);
		photoCommentManager.save(photoComment);
		saveMessage("添加成功");
		id = photoId;
		return SUCCESS;
	}

	public PhotoCommentManager getPhotoCommentManager() {
		return photoCommentManager;
	}

	public void setPhotoCommentManager(PhotoCommentManager photoCommentManager) {
		this.photoCommentManager = photoCommentManager;
	}

	public PhotoManager getPhotoManager() {
		return photoManager;
	}

	public void setPhotoManager(PhotoManager photoManager) {
		this.photoManager = photoManager;
	}

	public List<PhotoComment> getPhotoComments() {
		return photoComments;
	}

	public void setPhotoComments(List<PhotoComment> photoComments) {
		this.photoComments = photoComments;
	}

	public PhotoComment getPhotoComment() {
		return photoComment;
	}

	public void setPhotoComment(PhotoComment photoComment) {
		this.photoComment = photoComment;
	}

	public PhotoCommentQuery getQuery() {
		return query;
	}

	public void setQuery(PhotoCommentQuery query) {
		this.query = query;
	}

	public Integer getPhotoId() {
		return photoId;
	}

	public void setPhotoId(Integer photoId) {
		this.photoId = photoId;
	}

}