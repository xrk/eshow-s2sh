package com.logo.eshow.components.upyun;

import java.net.URL;

import com.logo.eshow.model.Service;
import com.logo.eshow.util.DateUtil;
import com.logo.eshow.util.FileUtil;

public class UpYunUtil {

	/**
	 * 上传图片到服务空间
	 * 
	 * @param service服务
	 * @param step版本库是否增加
	 * 
	 * @return 上传后地址
	 */
	public static String upload(Service service, int step) {
		try {
			// 初始化空间
			UpYun upyun = new UpYun("bangqu-service", UpYunConfig.USERNAME, UpYunConfig.PASSWORD);
			String url = service.getImg().replace(".middle.jpg", "");
			String filePath = "/" + DateUtil.getDateTime("yyyy/MM/dd", service.getAddTime()) + "/"
					+ service.getId() + "-" + (step) + FileUtil.getFileExt(url);// 又拍云存储的位置
			if (upyun.writeFile(filePath,
					FileUtil.inputStreamToByte(new URL(url).openConnection().getInputStream()),
					true))// 上传图片到又拍云存储
			{
				service.setImg(UpYunConfig.IMG + filePath);
			} else {
				service.setImg(UpYunConfig.IMG + "/default.jpg");// 服务默认图片
			}
		} catch (Exception e) {
			service.setImg(UpYunConfig.IMG + "/default.jpg");// 服务默认图片
		}
		return service.getImg();
	}
}
