package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.ThumbQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Thumb;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface ThumbManager extends GenericManager<Thumb, Integer> {
	
	List<Thumb> list(ThumbQuery query);

	Page<Thumb> search(ThumbQuery query);
	
}