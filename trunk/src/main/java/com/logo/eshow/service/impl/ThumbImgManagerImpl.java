package com.logo.eshow.service.impl;

import java.util.Date;
import java.util.List;

import com.logo.eshow.bean.query.ThumbImgQuery;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.dao.ThumbImgDao;
import com.logo.eshow.model.ThumbImg;
import com.logo.eshow.service.ThumbImgManager;
import com.logo.eshow.service.impl.GenericManagerImpl;
import com.logo.eshow.util.DateUtil;
import com.logo.eshow.util.ImageUtil;

import javax.jws.WebService;

import magick.MagickException;

@WebService(serviceName = "ThumbImgService", endpointInterface = "com.logo.eshow.service.ThumbImgManager")
public class ThumbImgManagerImpl extends GenericManagerImpl<ThumbImg, Integer> implements
		ThumbImgManager {
	ThumbImgDao thumbImgDao;

	public ThumbImgManagerImpl(ThumbImgDao thumbImgDao) {
		super(thumbImgDao);
		this.thumbImgDao = thumbImgDao;
	}

	public List<ThumbImg> list(ThumbImgQuery query) {
		return thumbImgDao.list(query);
	}

	public Page<ThumbImg> search(ThumbImgQuery query) {
		return thumbImgDao.search(query);
	}

	public ThumbImg thumb(ThumbImgQuery query) {
		List<ThumbImg> thumbImgList = thumbImgDao.list(query);
		ThumbImg thumbImg = new ThumbImg();
		if (thumbImgList.isEmpty()) {
			thumbImg.setHeight(query.getHeight());
			thumbImg.setWidth(query.getWidth());
			// 创建缩略图
			String path = "upload/thumbImg/";
			String date = DateUtil.getDateTime("yyyyMMdd", new Date());
			String fileName = thumbImg.getWidth() + "-" + thumbImg.getHeight() + ".jpg";
			try {
				ImageUtil.thumbImage(query.getOrigImg(), path + date + "/", fileName,
						thumbImg.getWidth(), thumbImg.getHeight(), query.type);
			} catch (MagickException e) {
				e.printStackTrace();
			}
			thumbImg.setAddTime(new Date());
			thumbImg.setImg(fileName);
			thumbImg.setType(query.type);
			thumbImg.setName(query.name);
			thumbImg.setDescription(query.description);
			thumbImg.setOrigImg(query.origImg);
			thumbImg = save(thumbImg);
		} else {
			thumbImg = thumbImgList.get(0);
		}
		return thumbImg;
	}
}