package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ServiceTypeQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ServiceTypeDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.ServiceType;

/**
 * 
 * @author leida
 * 
 */
@Repository("serviceTypeDao")
public class ServiceTypeDaoHibernate extends GenericDaoHibernate<ServiceType, Integer> implements
		ServiceTypeDao {

	public ServiceTypeDaoHibernate() {
		super(ServiceType.class);
	}

	public List<ServiceType> list(ServiceTypeQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<ServiceType> search(ServiceTypeQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ServiceTypeQuery query) {
		if (query != null) {
			if (query.name != null) {
				rule.add(Restrictions.eq("name", query.name));
			}
			if (query.remark != null) {
				rule.add(Restrictions.eq("remark", query.remark));
			}
			if (query.website != null) {
				rule.add(Restrictions.eq("website", query.website));
			}
			if (query.sequence != null) {
				rule.add(Restrictions.eq("sequence", query.sequence));
			}
		}
		return rule;
	}
}
