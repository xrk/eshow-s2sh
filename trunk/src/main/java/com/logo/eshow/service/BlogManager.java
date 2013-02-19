package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.BlogQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Blog;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface BlogManager extends GenericManager<Blog, Integer> {
	
	List<Blog> list(BlogQuery query);
	
	Page<Blog> search(BlogQuery query);
}
