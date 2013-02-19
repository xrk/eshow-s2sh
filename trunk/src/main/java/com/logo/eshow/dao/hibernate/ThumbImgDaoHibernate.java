package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.ThumbImgQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ThumbImgDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.ThumbImg;

/**
 * 
 * @author leida
 * 
 */
@Repository("thumbImgDao")
public class ThumbImgDaoHibernate extends GenericDaoHibernate<ThumbImg, Integer> implements
		ThumbImgDao {

	public ThumbImgDaoHibernate() {
		super(ThumbImg.class);
	}

	public List<ThumbImg> list(ThumbImgQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<ThumbImg> search(ThumbImgQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, ThumbImgQuery query) {
		if (query != null) {

			if (query.name != null) {
				rule.add(Restrictions.like("name", query.name, MatchMode.ANYWHERE));
			}
			if (query.height != null) {
				rule.add(Restrictions.eq("height", query.height));
			}
			if (query.img != null) {
				rule.add(Restrictions.like("img", query.img, MatchMode.ANYWHERE));
			}
			if (query.origImg != null) {
				rule.add(Restrictions.like("origImg", query.origImg, MatchMode.ANYWHERE));
			}
			if (query.width != null) {
				rule.add(Restrictions.eq("width", query.width));
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
