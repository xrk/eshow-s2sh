package com.logo.eshow.dao;

import java.util.List;

import com.logo.eshow.bean.query.BoardQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.GenericDao;
import com.logo.eshow.model.Board;

/**
 * An interface that provides a data management interface to the Board table.
 */
public interface BoardDao extends GenericDao<Board, Integer> {

	List<Board> list(BoardQuery query);

	Page<Board> search(BoardQuery query);
}