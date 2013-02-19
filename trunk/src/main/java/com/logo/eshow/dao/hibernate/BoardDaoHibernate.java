package com.logo.eshow.dao.hibernate;

import java.util.List;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.logo.eshow.bean.query.BoardQuery;
import com.logo.eshow.common.dao.EnhancedRule;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.BoardDao;
import com.logo.eshow.dao.hibernate.GenericDaoHibernate;
import com.logo.eshow.model.Board;

/**
 * 
 * @author leida
 * 
 */
@Repository("boardDao")
public class BoardDaoHibernate extends GenericDaoHibernate<Board, Integer> implements BoardDao {

	public BoardDaoHibernate() {
		super(Board.class);
	}

	public List<Board> list(BoardQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		return list(rule);
	}

	public Page<Board> search(BoardQuery query) {
		EnhancedRule rule = new EnhancedRule();
		setRule(rule, query);
		if (query != null) {
			rule.setOffset(query.getOffset());
			rule.setPageSize(query.pagesize);
		}
		return page(rule);
	}

	public EnhancedRule setRule(EnhancedRule rule, BoardQuery query) {
		if (query != null) {
			if (query.addTime != null) {
				rule.add(Restrictions.eq("addTime", query.addTime));
			}
			if (query.name != null) {
				rule.add(Restrictions.eq("name", query.name));
			}
			if (query.description != null) {
				rule.add(Restrictions.eq("description", query.description));
			}
			if (query.sequence != null) {
				rule.add(Restrictions.eq("sequence", query.sequence));
			}
		}
		return rule;
	}
}
