package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.TopicQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Topic;

/**
 * An interface that provides a data management interface to the Topic table.
 */
public interface TopicDao extends GenericDao<Topic, Integer> {

	List<Topic> list(TopicQuery query);

	Page<Topic> search(TopicQuery query);
}