package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.TopicQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Topic;
import com.logo.eshow.service.TopicManager;
import com.logo.eshow.service.BoardManager;
import com.logo.eshow.util.PageUtil;
import com.logo.eshow.webapp.action.BaseAction;
import com.logo.eshow.common.CommonVar;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class TopicAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TopicManager topicManager;
	private BoardManager boardManager;
	private List<Topic> topics;
	private Topic topic;
	private TopicQuery query;
	private Integer boardId;

	public String list() {
		topics = topicManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Topic> page = topicManager.search(query);
		topics = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return LIST;
	}

	public String delete() {
		Topic old = topicManager.get(id);
		if (old.getUser().getId().equals(getSessionUser().getId())) {
			if (old.getCommentSize() == 0) {
				topicManager.remove(id);
				saveMessage("删除成功");
			} else {
				saveMessage("无权删除");
			}
		} else {
			saveMessage("无权删除");
		}
		return LIST;
	}

	public String view() {
		if (id != null) {
			topic = topicManager.get(id);
			topic.setCount(topic.getCount() + +CommonVar.STEP);
			topicManager.save(topic);
		} else {
			topic = new Topic();

		}
		return SUCCESS;
	}

	public String update() throws Exception {
		Topic old = topicManager.get(id);
		old.setUpdateTime(new Date());
		old.setTitle(topic.getTitle());
		old.setContent(topic.getContent());
		if (boardId != null) {
			old.setBoard(boardManager.get(boardId));
		}
		topicManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		topic.setAddTime(new Date());
		topic.setUpdateTime(new Date());
		topic.setState(CommonVar.TOPIC_STATE_UNAUDIT);
		topic.setEnabled(Boolean.TRUE);
		topic.setCommentSize(CommonVar.DEFAULT);
		topic.setCount(CommonVar.DEFAULT);
		if (boardId != null) {
			topic.setBoard(boardManager.get(boardId));
		}
		topic.setUser(getSessionUser());
		topic = topicManager.save(topic);
		saveMessage("添加成功");
		id = topic.getId();
		return SUCCESS;
	}

	public String state() throws Exception {
		Topic old = topicManager.get(id);
		old.setState(topic.getState());
		topicManager.save(old);
		saveMessage("审核成功");
		return SUCCESS;
	}

	public TopicManager getTopicManager() {
		return topicManager;
	}

	public void setTopicManager(TopicManager topicManager) {
		this.topicManager = topicManager;
	}

	public BoardManager getBoardManager() {
		return boardManager;
	}

	public void setBoardManager(BoardManager boardManager) {
		this.boardManager = boardManager;
	}

	public List<Topic> getTopics() {
		return topics;
	}

	public void setTopics(List<Topic> topics) {
		this.topics = topics;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public TopicQuery getQuery() {
		return query;
	}

	public void setQuery(TopicQuery query) {
		this.query = query;
	}

	public Integer getBoardId() {
		return boardId;
	}

	public void setBoardId(Integer boardId) {
		this.boardId = boardId;
	}

}