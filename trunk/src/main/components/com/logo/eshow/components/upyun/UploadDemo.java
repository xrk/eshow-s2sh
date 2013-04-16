package com.logo.eshow.components.upyun;

import java.io.File;

public class UploadDemo {
	public static void main(String[] args) throws Exception {
		// / 初始化空间
		UpYun upyun = new UpYun("bangqu", "bangqu", "bangqu,.!@#");
		System.out.println("SDK 版本 " + upyun.version());
		// / 设置是否打印调试信息
		upyun.debug = true;

		// / 获取空间占用大小
		long x = upyun.getBucketUsage();

		// / 获取某个目录的空间占用大小

		// / 上传文件
		File file = new File("D:\\test.jpg");

		// 是否自动创建父级目录（最多10级）
		System.out.println(upyun.writeFile("/test.jpg", file, true));

		// / 读取目录
		// List<UpYun.FolderItem> items = upyun.readDir("/2012/");
		// System.out.println(items.size());
		// for (int i = 0; i < items.size(); i++) {
		// System.out.print(items.get(i).name);
		// System.out.println(" " + items.get(i).type);
		// }
	}
}
