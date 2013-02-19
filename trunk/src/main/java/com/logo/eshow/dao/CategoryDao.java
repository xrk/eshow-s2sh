package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.CategoryQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Category;

/**
 * An interface that provides a data management interface to the Category table.
 */
public interface CategoryDao extends GenericDao<Category, Integer> {

	List<Category> list(CategoryQuery query);

	Page<Category> search(CategoryQuery query);
}