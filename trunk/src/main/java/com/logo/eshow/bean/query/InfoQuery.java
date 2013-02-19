package com.logo.eshow.bean.query;

/**
 * Info 查询Bean
 * 
 * @author leida
 * 
 */
public class InfoQuery extends BaseQuery {
	public String type;
	public String url;
	public String title;
	public String content;
	public Boolean enable;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Boolean getEnable() {
		return enable;
	}

	public void setEnable(Boolean enable) {
		this.enable = enable;
	}

}