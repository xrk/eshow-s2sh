package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.BlogCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BlogCommentDao;
import com.logo.eshow.model.BlogComment;
import com.logo.eshow.service.BlogCommentManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "BlogCommentService", endpointInterface = "com.logo.eshow.service.BlogCommentManager")
@Service
public class BlogCommentManagerImpl extends GenericManagerImpl<BlogComment, Integer> implements
		BlogCommentManager {
	@Autowired
	BlogCommentDao blogCommentDao;
	
	@Autowired
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