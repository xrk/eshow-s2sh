package com.logo.eshow.util;

import java.awt.Dimension;
import java.awt.Rectangle;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;

import org.apache.struts2.ServletActionContext;

import magick.ImageInfo;
import magick.MagickException;
import magick.MagickImage;

/**
 * 图片处理类
 * 
 * @author leida
 */
public class ImageUtil {

	/**
	 * @param path
	 * @param fileName
	 * @param url
	 * @param w
	 * @param h
	 * @param type
	 * @return boolean
	 * @throws MalformedURLException
	 * @throws IOException
	 * @throws MagickException
	 */
	public static boolean downloadImage(String path, String fileName,
			String url, int w, int h, String type) throws IOException,
			MagickException {
		try {
			String uploadDir = ServletActionContext.getServletContext()
					.getRealPath("/")
					+ "/" + path;

			File file = new File(uploadDir + "orig/");
			if (!file.exists() || !file.isDirectory()) {
				file.mkdirs();
			}

			InputStream stream = new URL(url).openConnection().getInputStream();

			OutputStream bos = new FileOutputStream(uploadDir + "orig/"
					+ fileName);
			int bytesRead;
			byte[] buffer = new byte[8192];

			while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
				bos.write(buffer, 0, bytesRead);
			}

			bos.close();
			stream.close();

			System.setProperty("jmagick.systemclassloader", "no");
			ImageInfo info = new ImageInfo(uploadDir + "orig/" + fileName);
			MagickImage image = new MagickImage(info);
			MagickImage resizeImg = ImageUtil.resize(image, w, h, type);
			resizeImg.setFileName(uploadDir + fileName);
			resizeImg.writeImage(info);
		} catch (MalformedURLException e) {
			return false;
		}
		return true;
	}

	/**
	 * 上传图片
	 * 
	 * @param path
	 *            保存路径
	 * @param fileName
	 *            文件名称中的特征
	 * @param img
	 *            图片
	 * @throws IOException
	 * @throws MagickException
	 */
	public static void uploadImage(String path, String fileName, File img)
			throws IOException, MagickException {
		String uploadDir = ServletActionContext.getServletContext()
				.getRealPath("/")
				+ "/" + path;
		InputStream stream = new FileInputStream(img);
		File file = new File(uploadDir + "orig/");
		if (!file.exists() || !file.isDirectory()) {
			file.mkdirs();
		}
		OutputStream bos = new FileOutputStream(uploadDir + "orig/" + fileName
				+ ".jpg");
		int bytesRead;
		byte[] buffer = new byte[8192];

		while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
			bos.write(buffer, 0, bytesRead);
		}

		bos.close();
		stream.close();

	}

	/**
	 * 读取指定文件生成缩略图
	 * 
	 * @param newPathFile
	 *            新路径和文件名
	 * @param oldPathFile
	 *            原文件路径和文件名
	 * @param w
	 *            宽度
	 * @param h
	 *            高度
	 * @param type
	 *            缩略图类型
	 * @throws MagickException
	 */
	public static void resizeImage(String newPathFile, String oldPathFile,
			int w, int h, String type) throws MagickException {
		// 绝对路径
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/")
				+ "/";
		File file = new File(realPath
				+ newPathFile.substring(0, newPathFile.lastIndexOf("/")));
		if (!file.exists() || !file.isDirectory()) {
			file.mkdirs();
		}
		System.setProperty("jmagick.systemclassloader", "no");
		ImageInfo info = new ImageInfo(realPath + oldPathFile);
		MagickImage image = new MagickImage(info);
		MagickImage resizeImg = ImageUtil.resize(image, w, h, type);
		resizeImg.setFileName(realPath + newPathFile);
		resizeImg.writeImage(info);
	}

	/**
	 * 裁剪图片
	 * 
	 * @param newPathFile
	 *            新路径文件
	 * @param newPathFile
	 *            原路径文件
	 * @param x
	 *            X坐标
	 * @param y
	 *            Y坐标
	 * @param w
	 *            宽度
	 * @param h
	 *            高度
	 * @param type
	 * @throws MagickException
	 */
	public static void cropImage(String newPathFile, String filePathFile,
			int x, int y, int w, int h) throws MagickException {
		// 绝对路径
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/")
				+ "/";
		File file = new File(realPath
				+ newPathFile.substring(0, newPathFile.lastIndexOf("/")));
		if (!file.exists() || !file.isDirectory()) {
			file.mkdirs();
		}
		System.setProperty("jmagick.systemclassloader", "no");
		ImageInfo info = new ImageInfo(realPath + filePathFile);
		Rectangle rect = new Rectangle(x, y, w, h);
		MagickImage image = new MagickImage(info);
		MagickImage cropImg = image.cropImage(rect);
		cropImg.setFileName(realPath + newPathFile);// 100-100*20
		cropImg.writeImage(info);
	}

	/**
	 * 根据原文件生成新缩略图
	 * 
	 * @param origImg
	 *            新路径
	 * @param imgPath
	 *            新文件路径
	 * @param imgName
	 *            新文件名称
	 * @param w
	 * @param h
	 * @param type
	 * @throws MagickException
	 */
	public static void thumbImage(String origImg, String imgPath,
			String imgName, int w, int h, String type) throws MagickException {
		String realPath = ServletActionContext.getServletContext().getRealPath(
				"/")
				+ "/";
		File file = new File(realPath + imgPath);
		if (!file.exists() || !file.isDirectory()) {
			file.mkdirs();
		}
		System.setProperty("jmagick.systemclassloader", "no");
		ImageInfo info = new ImageInfo(realPath + origImg);
		MagickImage image = new MagickImage(info);
		MagickImage resizeImg = ImageUtil.resize(image, w, h, type);
		resizeImg.setFileName(realPath + imgPath + imgName + "-" + w + "*" + h
				+ ".jpg");// 100-100*20
		resizeImg.writeImage(info);
	}

	public static MagickImage resize(MagickImage image, int w, int h,
			String type) throws MagickException {
		Dimension dim = image.getDimension();
		int width = (int) dim.getWidth();
		int height = (int) dim.getHeight();
		// if (width / height > 2.5) {
		// Rectangle rect = new Rectangle();
		// if (height > h) {
		// rect.height = h;
		// rect.y = (height - h) / 2;
		// }
		// else {
		// rect.height = height;
		// rect.y = 0;
		// }
		// rect.width = w;
		// rect.x = (width - w) / 2;
		// return image.cropImage(rect);
		// }
		// else if (height / width > 2.5) {
		// Rectangle rect = new Rectangle();
		// if (width > w) {
		// rect.width = w;
		// rect.x = (width - w) / 2;
		// }
		// else {
		// rect.width = width;
		// rect.x = 0;
		// }
		// rect.height = h;
		// rect.y = (height - h) / 2;
		// return image.cropImage(rect);
		// }
		// else {
		if (type.equals("zoom")) {

			int newh = h;
			int neww = w;
			// 如果压缩宽度大于实际宽度
			if (w > width) {
				neww = width;
				// 如果压缩高度大于实际高度
				if (h > height) {
					newh = height;
				} else {
					newh = h;
					neww = width * h / height;
				}
			} else {
				neww = w;
				// 如果压缩高度大于实际高度
				if (h > height) {
					newh = height * w / width;
				} else {
					if (width > height) {
						neww = w;
						newh = height * w / width;
					} else {
						newh = h;
						neww = width * h / height;
					}
				}
			}
			return image.scaleImage(neww, newh);
		} else if (type.equals("crop")) {
			Rectangle rect = new Rectangle();
			rect.width = w;
			rect.height = h;
			// 取中间
			rect.x = w / 4;
			rect.y = h / 4;
			return image.cropImage(rect);
		} else {
			return image.scaleImage(w, h);
		}
		// }
	}
}
