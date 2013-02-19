package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.FeedbackQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Feedback;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface FeedbackManager extends GenericManager<Feedback, Integer> {
	
	List<Feedback> list(FeedbackQuery query);
	
	Page<Feedback> search(FeedbackQuery query);
	
}
