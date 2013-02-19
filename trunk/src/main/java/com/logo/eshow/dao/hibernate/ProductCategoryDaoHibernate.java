package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ProductCategoryQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ProductCategoryDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.ProductCategory;

/**
 * 
 * @author leida
 * 
 */
@Repository("productCategoryDao")
public class ProductCategoryDaoHibernate extends GenericDaoHibernate<ProductCategory, Integer>
		implements ProductCategoryDao {

	public ProductCategoryDaoHibernate() {
		super(ProductCategory.class);
	}

	public List<ProductCategory> list(ProductCategoryQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<ProductCategory> search(ProductCategoryQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ProductCategoryQuery query) {

		if (query != null) {
			if (query.name != null) {
				rule.add(Restrictions.like("name", query.name, MatchMode.ANYWHERE));
			}
			if (query.description != null) {
				rule.add(Restrictions.like("description", query.description, MatchMode.ANYWHERE));
			}
			if (query.sequence != null) {
				rule.add(Restrictions.eq("sequence", query.sequence));
			}
		}
		return rule;
	}
}
