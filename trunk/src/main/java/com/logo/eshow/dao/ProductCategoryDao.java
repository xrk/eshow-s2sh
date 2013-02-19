package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.ProductCategoryQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.ProductCategory;

/**
 * An interface that provides a data management interface to the ProductCategory
 * table.
 */
public interface ProductCategoryDao extends GenericDao<ProductCategory, Integer> {
	List<ProductCategory> list(ProductCategoryQuery query);

	Page<ProductCategory> search(ProductCategoryQuery query);
}