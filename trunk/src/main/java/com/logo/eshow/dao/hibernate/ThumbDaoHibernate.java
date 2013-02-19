package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ThumbDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Thumb;

/**
 * 
 * @author leida
 *
 */
@Repository("thumbDao")
public class ThumbDaoHibernate extends GenericDaoHibernate<Thumb, Integer>
		implements ThumbDao {

	public ThumbDaoHibernate() {
		super(Thumb.class);
	}

	public List<Thumb> list(ThumbQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<Thumb> search(ThumbQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ThumbQuery query) {
		if (query != null) {

			if (query.name != null) {
				rule.add(Restrictions.like("name", query.name,
						MatchMode.ANYWHERE));
			}
			if (query.description != null) {
				rule.add(Restrictions.like("description",
						query.description, MatchMode.ANYWHERE));
			}
			if (query.model != null) {
				rule.add(Restrictions.like("model", query.model));
			}

			if (query.getOrder() != null) {
				rule.addOrder(query.getDesc() ? Order.desc(query
						.getOrder()) : Order.asc(query.getOrder()));
			}
		}
		return rule;
	}
}
