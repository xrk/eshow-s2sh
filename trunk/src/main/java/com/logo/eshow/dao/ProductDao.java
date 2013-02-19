package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Product;


/**
 * An interface that provides a data management interface to the Product table.
 */
public interface ProductDao extends GenericDao<Product, Integer> {
	
	List<Product> list(ProductQuery query);
	
	Page<Product> search(ProductQuery query);
}

