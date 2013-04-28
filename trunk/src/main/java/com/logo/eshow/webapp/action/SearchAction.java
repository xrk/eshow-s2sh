package com.logo.eshow.webapp.action;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

import com.logo.eshow.bean.query.BaseQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.components.search.SearchManager;
import com.logo.eshow.model.Blog;
import com.logo.eshow.model.BlogComment;
import com.logo.eshow.model.Service;
import com.logo.eshow.model.Topic;
import com.logo.eshow.model.User;
import com.logo.eshow.util.PageUtil;

@Results({ @Result(name = "blog", location = "/search/"),
		@Result(name = "user", location = "/search/user"),
		@Result(name = "service", location = "/search/service"),
		@Result(name = "topic", location = "/search/topic") })
public class SearchAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String BLOG = "blog";
	public static final String USER = "user";
	public static final String SERVICE = "service";
	public static final String QUESTION = "question";
	public static final String TOPIC = "topic";

	@Autowired
	private SearchManager searchManager;
	private String keyword = "";
	private List<Blog> blogs;
	private List<User> users;
	private List<Service> services;
	private List<Topic> topics;

	private List<BlogComment> blogComments;
	private BaseQuery query = new BaseQuery();

	public String blog() throws Exception {
		if (StringUtils.isNotEmpty(keyword)) {
			Page<Blog> page = searchManager.search(Blog.class, keyword, query.getOffset(),
					query.pagesize, "title", "content");
			blogs = page.getDataList();
			saveRequest("page", PageUtil.conversion(page));
		}
		return BLOG;
	}

	public String user() throws Exception {
		if (StringUtils.isNotEmpty(keyword)) {
			Page<User> page = searchManager.search(User.class, keyword, query.getOffset(),
					query.pagesize, "username", "realname", "domain", "intro", "city", "province");
			users = page.getDataList();
			saveRequest("page", PageUtil.conversion(page));
		}
		return USER;
	}

	public String service() throws Exception {
		if (StringUtils.isNotEmpty(keyword)) {
			Page<Service> page = searchManager.search(Service.class, keyword, query.getOffset(),
					query.pagesize, "content");
			services = page.getDataList();
			saveRequest("page", PageUtil.conversion(page));
		}
		return SERVICE;
	}

	public String topic() throws Exception {
		if (StringUtils.isNotEmpty(keyword)) {
			Page<Topic> page = searchManager.search(Topic.class, keyword, query.getOffset(),
					query.pagesize, "title", "content");
			topics = page.getDataList();
			saveRequest("page", PageUtil.conversion(page));
		}
		return TOPIC;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Blog> getBlogs() {
		return blogs;
	}

	public void setBlogs(List<Blog> blogs) {
		this.blogs = blogs;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public List<Service> getServices() {
		return services;
	}

	public void setServices(List<Service> services) {
		this.services = services;
	}

	public List<Topic> getTopics() {
		return topics;
	}

	public void setTopics(List<Topic> topics) {
		this.topics = topics;
	}

	public List<BlogComment> getBlogComments() {
		return blogComments;
	}

	public void setBlogComments(List<BlogComment> blogComments) {
		this.blogComments = blogComments;
	}

	public BaseQuery getQuery() {
		return query;
	}

	public void setQuery(BaseQuery query) {
		this.query = query;
	}

}
