package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.AlbumQuery;
import com.logo.eshow.model.Album;
import com.logo.eshow.service.AlbumManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class AlbumAction extends BaseAction {
	/** 	
	 * 
	 */
	private static final long serialVersionUID = 4663487175099570373L;
	@Autowired
	private AlbumManager albumManager;
	private List<Album> albums;
	private Album album;
	private AlbumQuery query;

	public String list() {
		albums = albumManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Album> page = albumManager.search(query);
		albums = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		albumManager.remove(id);
		saveMessage("删除成功");
		return LIST;
	}

	public String view() {
		if (id != null) {
			album = albumManager.get(id);
		}
		return NONE;
	}

	public String update() throws Exception {
		Album old = albumManager.get(id);
		old.setName(album.getName());
		old.setDescription(album.getDescription());
		albumManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		album.setAddTime(new Date());
		album.setUser(getSessionUser());
		album = albumManager.save(album);
		saveMessage("添加成功");
		id = album.getId();
		return SUCCESS;
	}

	public List<Album> getAlbums() {
		return albums;
	}

	public void setAlbums(List<Album> albums) {
		this.albums = albums;
	}

	public Album getAlbum() {
		return album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}

	public AlbumQuery getQuery() {
		return query;
	}

	public void setQuery(AlbumQuery query) {
		this.query = query;
	}

}