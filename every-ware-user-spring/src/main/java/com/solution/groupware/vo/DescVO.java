package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("DescVO")
public class DescVO {
	private int idx;
	private String name;
	private int deptLevel;
	private Integer orderNo;
	private Integer parentDeptIdx;
	private String regDate;
	private String modDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDeptLevel() {
		return deptLevel;
	}
	public void setDeptLevel(int deptLevel) {
		this.deptLevel = deptLevel;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getParentDeptIdx() {
		return parentDeptIdx;
	}
	public void setParentDeptIdx(Integer parentDeptIdx) {
		this.parentDeptIdx = parentDeptIdx;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
}
