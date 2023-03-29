package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("CodeVO")
public class CodeVO {
	private int grpCode;
	private int code;
	private String name;
	private String value;
	private Integer orderNo;
	
	public int getGrpCode() {
		return grpCode;
	}
	public void setGrpCode(int grpCode) {
		this.grpCode = grpCode;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
}
