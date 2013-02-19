package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.PostQuery;
import com.logo.eshow.model.Post;
import com.logo.eshow.service.PostManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class PostAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private PostManager postManager;
	private List<Post> posts;
	private Post post;
	private PostQuery query;

	public String list() {
		posts = postManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Post> page = postManager.search(query);
		posts = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		postManager.remove(id);
		saveMessage("删除成功");
		return LIST;
	}

	public String view() {
		if (id != null) {
			post = postManager.get(id);
		} else {
			post = new Post();
		}
		return SUCCESS;
	}

	public String update() throws Exception {
		Post old = postManager.get(id);
		old.setTitle(post.getTitle());
		old.setContent(post.getContent());
		postManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		post.setAddTime(new Date());
		post.setUser(getSessionUser());
		post.setEnabled(Boolean.TRUE);
		post = postManager.save(post);
		saveMessage("添加成功");
		id = post.getId();
		return SUCCESS;
	}

	public PostManager getPostManager() {
		return postManager;
	}

	public void setPostManager(PostManager postManager) {
		this.postManager = postManager;
	}

	public List<Post> getPosts() {
		return posts;
	}

	public void setPosts(List<Post> posts) {
		this.posts = posts;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public PostQuery getQuery() {
		return query;
	}

	public void setQuery(PostQuery query) {
		this.query = query;
	}

}