package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Product;
import com.logo.eshow.model.ProductCategory;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ProductManager extends GenericManager<Product, Integer> {

	List<Product> list(ProductQuery query);

	Page<Product> search(ProductQuery query);

	/**
	 * 修改产品列表的产品分类
	 * 
	 * @param services
	 * @param productCategory
	 */
	void update(List<Product> products, ProductCategory productCategory);

	/**
	 * 修改当前产品分类的产品列表的分类为NULL
	 * 
	 * @param services
	 * @param productCategory
	 */
	void update(Integer productCategoryId);
}
