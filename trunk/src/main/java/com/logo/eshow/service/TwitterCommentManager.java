package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.TwitterCommentQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.TwitterComment;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface TwitterCommentManager extends GenericManager<TwitterComment, Integer> {

	List<TwitterComment> list(TwitterCommentQuery query);

	Page<TwitterComment> search(TwitterCommentQuery query);

}