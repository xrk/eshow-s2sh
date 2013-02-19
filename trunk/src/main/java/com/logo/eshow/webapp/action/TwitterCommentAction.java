package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.TwitterCommentQuery;
import com.logo.eshow.model.Twitter;
import com.logo.eshow.model.TwitterComment;
import com.logo.eshow.service.TwitterCommentManager;
import com.logo.eshow.service.TwitterManager;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.util.CommonUtil;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class TwitterCommentAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TwitterCommentManager twitterCommentManager;
	private TwitterManager twitterManager;
	private List<TwitterComment> twitterComments;
	private TwitterComment twitterComment;
	private TwitterCommentQuery query;
	private Integer twitterId;

	public String list() {
		twitterComments = twitterCommentManager.list(query);
		return LIST;
	}

	public String search() {
		Page<TwitterComment> page = twitterCommentManager.search(query);
		twitterComments = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		TwitterComment twitterComment = twitterCommentManager.get(id);
		// 微博客的主人可以删除回复，回复主人可以删除自己的回复
		if (twitterComment.getUser().getId().equals(getSessionUser().getId())) {
			Twitter twitter = twitterComment.getTwitter();
			twitter.setCommentSize(twitter.getCommentSize() - 1);
			twitterManager.save(twitter);
			twitterCommentManager.remove(id);
			saveMessage("删除成功");
		} else {
			saveMessage("无权删除");
		}
		return LIST;
	}

	public String view() {
		if (id != null) {
			twitterComment = twitterCommentManager.get(id);
		} else {
			twitterComment = new TwitterComment();
		}
		return NONE;
	}

	public String update() throws Exception {
		TwitterComment old = twitterCommentManager.get(id);
		old.setContent(twitterComment.getContent());
		twitterCommentManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		twitterComment.setAddTime(new Date());
		twitterComment.setUser(getSessionUser());
		Twitter twitter = twitterManager.get(twitterId);
		twitter.setCommentSize(CommonUtil.count(twitter.getCommentSize()));
		twitterComment.setTwitter(twitter);
		twitterCommentManager.save(twitterComment);
		saveMessage("添加成功");

		id = twitterId;
		return SUCCESS;
	}

	public TwitterCommentManager getTwitterCommentManager() {
		return twitterCommentManager;
	}

	public void setTwitterCommentManager(TwitterCommentManager twitterCommentManager) {
		this.twitterCommentManager = twitterCommentManager;
	}

	public TwitterManager getTwitterManager() {
		return twitterManager;
	}

	public void setTwitterManager(TwitterManager twitterManager) {
		this.twitterManager = twitterManager;
	}

	public List<TwitterComment> getTwitterComments() {
		return twitterComments;
	}

	public void setTwitterComments(List<TwitterComment> twitterComments) {
		this.twitterComments = twitterComments;
	}

	public TwitterComment getTwitterComment() {
		return twitterComment;
	}

	public void setTwitterComment(TwitterComment twitterComment) {
		this.twitterComment = twitterComment;
	}

	public TwitterCommentQuery getQuery() {
		return query;
	}

	public void setQuery(TwitterCommentQuery query) {
		this.query = query;
	}

	public Integer getTwitterId() {
		return twitterId;
	}

	public void setTwitterId(Integer twitterId) {
		this.twitterId = twitterId;
	}

}