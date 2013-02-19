package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Product;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ProductManager extends GenericManager<Product, Integer> {
	List<Product> list(ProductQuery query);

	Page<Product> search(ProductQuery query);
}
