package com.logo.eshow.service.impl;

import java.util.List;

import com.logo.eshow.bean.query.BlogQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BlogDao;
import com.logo.eshow.model.Blog;
import com.logo.eshow.service.BlogManager;
import com.logo.eshow.service.impl.GenericManagerImpl;
import javax.jws.WebService;

import org.springframework.stereotype.Service;

@WebService(serviceName = "BlogService", endpointInterface = "com.logo.eshow.service.BlogManager")
@Service
public class BlogManagerImpl extends GenericManagerImpl<Blog, Integer> implements BlogManager {
	BlogDao blogDao;

	public BlogManagerImpl(BlogDao blogDao) {
		super(blogDao);
		this.blogDao = blogDao;
	}

	public List<Blog> list(BlogQuery query) {
		return blogDao.list(query);
	}

	public Page<Blog> search(BlogQuery query) {
		return blogDao.search(query);
	}

}