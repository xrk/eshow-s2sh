package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.BlogCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BlogCommentDao;
import com.logo.eshow.model.BlogComment;
import com.logo.eshow.service.BlogCommentManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import javax.jws.WebService;

@WebService(serviceName = "BlogCommentService", endpointInterface = "com.logo.eshow.service.BlogCommentManager")
public class BlogCommentManagerImpl extends GenericManagerImpl<BlogComment, Integer> implements
		BlogCommentManager {
	BlogCommentDao blogCommentDao;

	public BlogCommentManagerImpl(BlogCommentDao blogCommentDao) {
		super(blogCommentDao);
		this.blogCommentDao = blogCommentDao;
	}

	public List<BlogComment> list(BlogCommentQuery query) {
		return blogCommentDao.list(query);
	}

	public Page<BlogComment> search(BlogCommentQuery query) {
		return blogCommentDao.search(query);
	}

}