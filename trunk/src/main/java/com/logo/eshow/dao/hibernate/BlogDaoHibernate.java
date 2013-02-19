package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.BlogQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BlogDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Blog;

/**
 * 
 * @author leida
 * 
 */
@Repository("blogDao")
public class BlogDaoHibernate extends GenericDaoHibernate<Blog, Integer> implements BlogDao {

	public BlogDaoHibernate() {
		super(Blog.class);
	}

	public Page<Blog> search(BlogQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public List<Blog> list(BlogQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, BlogQuery query) {
		if (query != null) {
			if (query.title != null) {
				rule.add(Restrictions.like("title", query.title, MatchMode.ANYWHERE));
			}
			if (query.content != null) {
				rule.add(Restrictions.like("content", query.content, MatchMode.ANYWHERE));
			}
			if (query.count != null) {
				rule.add(Restrictions.eq("count", query.count));
			}
			if (query.categoryId != null) {
				rule.add(Restrictions.eq("category.id", query.categoryId));
			}
			if (query.userId != null) {
				rule.add(Restrictions.eq("user.id", query.userId));
			}
			if (query.getOrder() != null) {
				rule.addOrder(query.getDesc() ? Order.desc(query.getOrder()) : Order.asc(query
						.getOrder()));
			}
		}
		return rule;
	}
}
