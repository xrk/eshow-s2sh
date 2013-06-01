package com.logo.eshow.bean.query;

/**
 * ServiceType 查询Bean
 * 
 * @author leida
 * 
 */
public class ServiceTypeQuery extends BaseQuery {

	public String name;
	public String remark;
	public String website;
	public Integer sequence;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public Integer getSequence() {
		return sequence;
	}

	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}

}