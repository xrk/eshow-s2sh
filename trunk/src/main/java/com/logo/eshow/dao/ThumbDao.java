package com.logo.eshow.dao;

import java.util.List;
import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Thumb;

/**
 * An interface that provides a data management interface to the Thumb table.
 */
public interface ThumbDao extends GenericDao<Thumb, Integer> {

	List<Thumb> list(ThumbQuery query);

	Page<Thumb> search(ThumbQuery query);
}