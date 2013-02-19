package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.BlogCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.BlogComment;

/**
 * An interface that provides a data management interface to the BlogComment
 * table.
 */
public interface BlogCommentDao extends GenericDao<BlogComment, Integer> {

	List<BlogComment> list(BlogCommentQuery query);

	Page<BlogComment> search(BlogCommentQuery query);
}