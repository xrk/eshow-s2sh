package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Info;

/**
 * An interface that provides a data management interface to the Info table.
 */
public interface InfoDao extends GenericDao<Info, Integer> {

	List<Info> list(InfoQuery query);

	Page<Info> search(InfoQuery query);
}