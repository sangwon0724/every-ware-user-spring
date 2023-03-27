package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("CategoryVO")
public class CategoryVO {
	private int categoryIdx;
	private String name;
	private String order;
	
	public int getCategoryIdx() {
		return categoryIdx;
	}
	public void setCategoryIdx(int categoryIdx) {
		this.categoryIdx = categoryIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
}
