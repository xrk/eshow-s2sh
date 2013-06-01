package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ProductDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Product;

/**
 * 
 * @author leida
 * 
 */
@Repository("productDao")
public class ProductDaoHibernate extends GenericDaoHibernate<Product, Integer> implements
		ProductDao {

	public ProductDaoHibernate() {
		super(Product.class);
	}

	public List<Product> list(ProductQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<Product> search(ProductQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ProductQuery query) {
		if (query != null) {
			if (query.addTime != null) {
				rule.add(Restrictions.eq("addTime", query.addTime));
			}
			if (query.name != null) {
				rule.add(Restrictions.eq("name", query.name));
			}
			if (query.content != null) {
				rule.add(Restrictions.eq("content", query.content));
			}
			if (query.sequence != null) {
				rule.add(Restrictions.eq("sequence", query.sequence));
			}
			if (query.productCategoryId != null) {
				rule.add(Restrictions.eq("productCategory.id", query.productCategoryId));
			}
			if (query.userId != null) {
				rule.add(Restrictions.eq("user.id", query.userId));
			}
			if (query.price != null) {
				rule.add(Restrictions.eq("price", query.price));
			}
			if (query.count != null) {
				rule.add(Restrictions.eq("count", query.count));
			}
			if (query.code != null) {
				rule.add(Restrictions.eq("code", query.code));
			}
			if (query.website != null) {
				rule.add(Restrictions.eq("website", query.website));
			}
			if (query.getOrder() != null) {
				rule.addOrder(query.getDesc() ? Order.desc(query.getOrder()) : Order.asc(query
						.getOrder()));
			}
		}
		return rule;
	}
}
