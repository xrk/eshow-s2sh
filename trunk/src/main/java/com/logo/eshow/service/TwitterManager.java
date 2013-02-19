package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.TwitterQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Twitter;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface TwitterManager extends GenericManager<Twitter, Integer> {
	
	List<Twitter> list(TwitterQuery query);

	Page<Twitter> search(TwitterQuery query);
	
}