package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ServiceDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Service;

/**
 * 
 * @author leida
 * 
 */
@Repository("serviceDao")
public class ServiceDaoHibernate extends GenericDaoHibernate<Service, Integer> implements
		ServiceDao {

	public ServiceDaoHibernate() {
		super(Service.class);
	}

	public List<Service> list(ServiceQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<Service> search(ServiceQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ServiceQuery query) {
		if (query != null) {
			if (query.addTime != null) {
				rule.add(Restrictions.eq("addTime", query.addTime));
			}
			if (query.updateTime != null) {
				rule.add(Restrictions.eq("updateTime", query.updateTime));
			}
			if (query.title != null) {
				rule.add(Restrictions.eq("title", query.title));
			}
			if (query.content != null) {
				rule.add(Restrictions.eq("content", query.content));
			}
			if (query.sequence != null) {
				rule.add(Restrictions.eq("sequence", query.sequence));
			}
			if (query.serviceTypeId != null) {
				rule.add(Restrictions.eq("serviceType.id", query.serviceTypeId));
			}
			if (query.userId != null) {
				rule.add(Restrictions.eq("user.id", query.userId));
			}
		}
		return rule;
	}
}
