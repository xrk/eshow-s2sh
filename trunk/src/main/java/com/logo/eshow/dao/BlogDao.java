package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.BlogQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Blog;


/**
 * An interface that provides a data management interface to the Blog table.
 */
public interface BlogDao extends GenericDao<Blog, Integer> {
	
	List<Blog> list(BlogQuery query);
	
	Page<Blog> search(BlogQuery query );
}