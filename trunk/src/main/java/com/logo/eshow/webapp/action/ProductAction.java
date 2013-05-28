package com.logo.eshow.webapp.action;

import com.logo.eshow.bean.query.ProductQuery;
import com.logo.eshow.common.CommonVar;
import com.logo.eshow.common.page.Page;
import com.logo.eshow.components.upyun.UpYunUtil;
import com.logo.eshow.model.Product;
import com.logo.eshow.service.ProductManager;
import com.logo.eshow.service.ProductCategoryManager;
import com.logo.eshow.util.PageUtil;

import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;

@Results({ @Result(name = "input", location = "add"),
		@Result(name = "list", type = "redirect", location = ""),
		@Result(name = "success", type = "redirect", location = "view/${id}"),
		@Result(name = "redirect", type = "redirect", location = "${redirect}") })
public class ProductAction extends BaseFileUploadAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private ProductManager productManager;
	@Autowired
	private ProductCategoryManager productCategoryManager;
	private List<Product> products;
	private Product product;
	private ProductQuery query;
	private Integer productCategoryId;

	public String list() {
		products = productManager.list(query);
		return LIST;
	}

	public String search() {
		Page<Product> page = productManager.search(query);
		products = page.getDataList();
		saveRequest("page", PageUtil.conversion(page));
		return REDIRECT;
	}

	public void delete() {
		product = productManager.get(id);
		if (getSessionUser().equals(product.getUser())) {
			productManager.remove(id);
		}
	}

	public String view() {
		if (id != null) {
			product = productManager.get(id);
		}
		return NONE;
	}

	public String update() throws Exception {
		Product old = productManager.get(id);
		old.setUpdateTime(new Date());
		old.setName(product.getName());
		old.setContent(product.getContent());
		if (productCategoryId != null) {
			old.setProductCategory(productCategoryManager.get(productCategoryId));
		}
		if (file != null) {
			old.setImg(UpYunUtil.upload(file));
		}
		productManager.save(old);
		saveMessage("修改成功");
		return SUCCESS;
	}

	public String save() throws Exception {
		product.setAddTime(new Date());
		product.setUpdateTime(new Date());
		if (productCategoryId != null) {
			product.setProductCategory(productCategoryManager.get(productCategoryId));
		}
		product.setUser(getSessionUser());
		product.setCount(CommonVar.DEFAULT);
		product.setSequence(0);
		product.setEnabled(Boolean.TRUE);
		if (file != null) {
			product.setImg(UpYunUtil.upload(file));
		}
		productManager.save(product);
		saveMessage("添加成功");
		id = product.getId();
		return SUCCESS;
	}

	public ProductManager getProductManager() {
		return productManager;
	}

	public void setProductManager(ProductManager productManager) {
		this.productManager = productManager;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Integer getProductCategoryId() {
		return productCategoryId;
	}

	public void setProductCategoryId(Integer productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public void setProductCategoryManager(ProductCategoryManager productCategoryManager) {
		this.productCategoryManager = productCategoryManager;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductQuery getQuery() {
		return query;
	}

	public void setQuery(ProductQuery query) {
		this.query = query;
	}

	public ProductCategoryManager getProductCategoryManager() {
		return productCategoryManager;
	}
}