package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Info;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface InfoManager extends GenericManager<Info, Integer> {

	List<Info> list(InfoQuery query);

	Page<Info> search(InfoQuery query);

	Info browse(InfoQuery query);// 浏览单个信息
}