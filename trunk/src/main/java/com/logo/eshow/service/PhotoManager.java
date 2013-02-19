package com.logo.eshow.service;

import java.util.List;

import com.logo.eshow.bean.query.PhotoQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.model.Photo;
import com.logo.eshow.service.GenericManager;

import javax.jws.WebService;

@WebService
public interface PhotoManager extends GenericManager<Photo, Integer> {

	List<Photo> list(PhotoQuery query);

	Page<Photo> search(PhotoQuery query);
}