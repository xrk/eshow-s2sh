package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ProductCategoryQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.ProductCategory;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ProductCategoryManager extends GenericManager<ProductCategory, Integer> {

	List<ProductCategory> list(ProductCategoryQuery query);

	Page<ProductCategory> search(ProductCategoryQuery query);
}