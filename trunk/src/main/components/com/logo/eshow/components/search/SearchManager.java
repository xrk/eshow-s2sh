package com.logo.eshow.components.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.util.Version;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.search.FullTextQuery;
import org.hibernate.search.FullTextSession;
import org.hibernate.search.Search;
import org.hibernate.search.query.dsl.QueryBuilder;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ReflectionUtils;
import org.wltea.analyzer.lucene.IKAnalyzer;

import com.logo.eshow.common.page.Page;

@Service
public class SearchManager<T> {

	@Autowired
	private SessionFactory sessionFactory;

	private static final Log log = LogFactory.getLog(SearchManager.class);

	public Page<T> search(Class object, String keyword, Integer offset, Integer pagesize,
			String... pros) throws Exception {
		Page<T> page = new Page<T>(offset, pagesize);
		List<T> list = new ArrayList<T>();
		Session session = sessionFactory.openSession();
		FullTextSession fullTextSession = Search.getFullTextSession(session);
		Transaction tx = fullTextSession.beginTransaction();
		QueryBuilder qb = fullTextSession.getSearchFactory().buildQueryBuilder().forEntity(object)
				.get();
		org.apache.lucene.search.Query query = qb.keyword().onFields(pros).matching(keyword)
				.createQuery();
		FullTextQuery hibQuery = fullTextSession.createFullTextQuery(query, object);
		hibQuery.setMaxResults(pagesize);
		hibQuery.setFirstResult(offset);
		list = hibQuery.list();
		tx.commit();
		list = hightLight(query, list, object, null, pros);
		page.setTotal(hibQuery.getResultSize());// 得到总数
		page.setDataList(list);
		// session.close();
		return page;
	}

	public List searchAll(Class object, String keyword, String... pros) {
		List result = new ArrayList();
		Session session = sessionFactory.openSession();
		FullTextSession fullTextSession = Search.getFullTextSession(session);
		Transaction tx = fullTextSession.beginTransaction();

		IKAnalyzer analyzer = new IKAnalyzer(true);
		org.apache.lucene.queryParser.QueryParser parser = new QueryParser(Version.LUCENE_35,
				"title", analyzer);
		try {
			org.apache.lucene.search.Query luceneQuery = parser.parse("title:" + keyword);
			org.hibernate.Query fullTextQuery = fullTextSession.createFullTextQuery(luceneQuery,
					object);
			result = fullTextQuery.list();
			tx.commit();
			session.close();
		} catch (ParseException e) {
		}
		return result;
	}

	/**
	 * @param org
	 *            .apache.lucene.search.Query luceneQuery
	 * @param searchResults搜索结果集
	 * @param searchResultClass搜索结果类型
	 * @param excludeFields要排除高亮的字段
	 * @param fieldNames需要高亮的字段
	 * @return 高亮后的searchResults
	 * @throws InvalidTokenOffsetsException
	 * @throws Exception
	 */
	private List<T> hightLight(org.apache.lucene.search.Query luceneQuery, List<T> searchResults,
			Class<T> searchResultClass, List<String> excludeFields, String... fieldNames)
			throws Exception {
		// 设置高亮

		SimpleHTMLFormatter formatter = new SimpleHTMLFormatter("<span class=\"red\">", "</span>");
		QueryScorer queryScorer = new QueryScorer(luceneQuery);
		Highlighter highlighter = new Highlighter(formatter, queryScorer);
		IKAnalyzer analyzer = new IKAnalyzer(false);

		for (T t : searchResults) {
			for (String fieldName : fieldNames) {

				if (null != excludeFields && excludeFields.contains(fieldName)) {
					continue;
				}

				Object fieldValue = ReflectionUtils.invokeMethod(
						BeanUtils.getPropertyDescriptor(searchResultClass, fieldName)
								.getReadMethod(), t);
				String hightLightFieldValue = null;

				if (fieldValue instanceof String) {

					hightLightFieldValue = highlighter.getBestFragment(analyzer, fieldName,
							ObjectUtils.toString(fieldValue, null));

					ReflectionUtils.invokeMethod(
							BeanUtils.getPropertyDescriptor(searchResultClass, fieldName)
									.getWriteMethod(), t, hightLightFieldValue);
				}
			}
		}

		return searchResults;
	}
}
