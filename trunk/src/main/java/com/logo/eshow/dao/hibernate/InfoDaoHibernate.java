package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.InfoDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Info;

/**
 * 
 * @author leida
 * 
 */
@Repository("infoDao")
public class InfoDaoHibernate extends GenericDaoHibernate<Info, Integer> implements InfoDao {

	public InfoDaoHibernate() {
		super(Info.class);
	}

	public List<Info> list(InfoQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<Info> search(InfoQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, InfoQuery query) {
		if (query != null) {
			if (query.type != null) {
				rule.add(Restrictions.like("type", query.type, MatchMode.ANYWHERE));
			}
			if (query.url != null) {
				rule.add(Restrictions.like("url", query.url, MatchMode.ANYWHERE));
			}
			if (query.title != null) {
				rule.add(Restrictions.like("title", query.title, MatchMode.ANYWHERE));
			}
			
			if (query.content != null) {
				rule.add(Restrictions.like("content", query.content, MatchMode.ANYWHERE));
			}
			if (query.website != null) {
				rule.add(Restrictions.eq("website", query.website));
			}
			if (query.enabled != null) {
				rule.add(Restrictions.eq("enabled", query.enabled));
			}

			if (query.getOrder() != null) {
				rule.addOrder(query.getDesc() ? Order.desc(query.getOrder()) : Order.asc(query
						.getOrder()));
			}
		}
		return rule;
	}

}
