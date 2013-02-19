package com.logo.eshow.common;

import com.logo.eshow.bean.query.AlbumQuery;
import com.logo.eshow.bean.query.BlogCommentQuery;
import com.logo.eshow.bean.query.BlogQuery;
import com.logo.eshow.bean.query.BoardQuery;
import com.logo.eshow.bean.query.CategoryQuery;
import com.logo.eshow.bean.query.InfoQuery;
import com.logo.eshow.bean.query.PhotoCommentQuery;
import com.logo.eshow.bean.query.PhotoQuery;
import com.logo.eshow.bean.query.ServiceQuery;
import com.logo.eshow.bean.query.ServiceTypeQuery;
import com.logo.eshow.bean.query.TopicCommentQuery;
import com.logo.eshow.bean.query.TopicQuery;
import com.logo.eshow.bean.query.UserQuery;

/**
 * 查询Bean的变量定义
 * 
 * @author leida
 * 
 */
public final class QueryBean {

	/**
	 * 事务查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static AlbumQuery ALBUM_QUERY = new AlbumQuery();

	/**
	 * 日志查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static BlogQuery BLOG_QUERY = new BlogQuery();

	/**
	 * 日志评论查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static BlogCommentQuery BLOGCOMMENT_QUERY = new BlogCommentQuery();

	/**
	 * 版块查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static BoardQuery BOARD_QUERY = new BoardQuery();

	/**
	 * 分类查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static CategoryQuery CATEGORY_QUERY = new CategoryQuery();

	/**
	 * 信息查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static InfoQuery INFO_QUERY = new InfoQuery();

	/**
	 * 图片查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static PhotoQuery PHOTO_QUERY = new PhotoQuery();

	/**
	 * 图片评论查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static PhotoCommentQuery PHOTOCOMMENT_QUERY = new PhotoCommentQuery();

	/**
	 * 服务查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static ServiceQuery SERVICE_QUERY = new ServiceQuery();

	/**
	 * 服务类型查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static ServiceTypeQuery SERVICETYPE_QUERY = new ServiceTypeQuery();

	/**
	 * 帖子查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static TopicQuery TOPIC_QUERY = new TopicQuery();

	/**
	 * 帖子评论查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static TopicCommentQuery TOPICCOMMENT_QUERY = new TopicCommentQuery();

	/**
	 * 用户查询字段的关键字对象，使用在request或session或appliction中。
	 */
	public static UserQuery USER_QUERY = new UserQuery();
}
