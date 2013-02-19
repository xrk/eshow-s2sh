package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.PostQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.PostDao;
import com.logo.eshow.model.Post;
import com.logo.eshow.service.PostManager;
import com.logo.eshow.service.impl.GenericManagerImpl;
import javax.jws.WebService;

@WebService(serviceName = "PostService", endpointInterface = "com.logo.eshow.service.PostManager")
public class PostManagerImpl extends GenericManagerImpl<Post, Integer> implements PostManager {
	PostDao postDao;

	public PostManagerImpl(PostDao postDao) {
		super(postDao);
		this.postDao = postDao;
	}

	public List<Post> list(PostQuery query) {
		return postDao.list(query);
	}

	public Page<Post> search(PostQuery query) {
		return postDao.search(query);
	}

}