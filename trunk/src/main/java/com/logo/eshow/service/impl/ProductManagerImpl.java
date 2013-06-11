package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ProductDao;
import com.logo.eshow.model.Product;
import com.logo.eshow.model.ProductCategory;
import com.logo.eshow.service.ProductManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@WebService(serviceName = "ProductService", endpointInterface = "com.logo.eshow.service.ProductManager")
@Service
public class ProductManagerImpl extends GenericManagerImpl<Product, Integer> implements
		ProductManager {
	@Autowired
	ProductDao productDao;

	@Autowired
	public ProductManagerImpl(ProductDao productDao) {
		super(productDao);
		this.productDao = productDao;
	}

	public List<Product> list(ProductQuery query) {
		return productDao.list(query);
	}

	public Page<Product> search(ProductQuery query) {
		return productDao.search(query);
	}

	@Override
	public void update(List<Product> products, ProductCategory productCategory) {
		for (Product product : products) {
			product.setProductCategory(productCategory);// 循环每一条服务,后更改服务的ID为NULL
			productDao.save(product);
		}
	}

	@Override
	public void update(Integer productCategoryId) {
		ProductQuery query = new ProductQuery();
		query.setProductCategoryId(productCategoryId);
		List<Product> products = productDao.list(query);
		update(products, null);
	}

}