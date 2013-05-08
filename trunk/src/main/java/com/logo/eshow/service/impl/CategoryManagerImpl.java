package com.logo.eshow.service.impl;

import com.logo.eshow.bean.query.CategoryQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.CategoryDao;
import com.logo.eshow.model.Category;
import com.logo.eshow.service.CategoryManager;
import com.logo.eshow.service.impl.GenericManagerImpl;

import java.util.List;
import javax.jws.WebService;

import org.springframework.stereotype.Service;

@WebService(serviceName = "CategoryService", endpointInterface = "com.logo.eshow.service.CategoryManager")
@Service
public class CategoryManagerImpl extends GenericManagerImpl<Category, Integer> implements
		CategoryManager {
	CategoryDao categoryDao;

	public CategoryManagerImpl(CategoryDao categoryDao) {
		super(categoryDao);
		this.categoryDao = categoryDao;
	}

	public List<Category> list(CategoryQuery query) {
		return categoryDao.list(query);
	}

	public Page<Category> search(CategoryQuery query) {
		return categoryDao.search(query);
	}

}