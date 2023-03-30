package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("UserVO")
public class UserVO {
	private int idx;
	private String name;
	private Integer deptIdx;
	private String deptName;
	private String roleCode;
	private String roleName;
	
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
	public Integer getDeptIdx() {
		return deptIdx;
	}
	public void setDeptIdx(Integer deptIdx) {
		this.deptIdx = deptIdx;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
