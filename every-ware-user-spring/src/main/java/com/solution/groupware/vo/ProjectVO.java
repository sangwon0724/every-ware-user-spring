package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("ProjectVO")
public class ProjectVO {
	private int idx;
	private int userIdx;
	private String name;
	private Integer deptIdx;
	private String deptName;
	private Integer pmUserIdx;
	private String pmUserName;
	private Integer plUserIdx;
	private String plUserName;
	private Integer clientIdx;
	private String clientName;
	private String workflow;
	private String workflowName;
	private String planDateSt;
	private String planDateEd;
	private Integer contractAmount;
	private Integer workAmount;
	private Integer workUserCount;
	private String outline;
	private String significant;
	private String regDate;
	private String modDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
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
	public Integer getPmUserIdx() {
		return pmUserIdx;
	}
	public void setPmUserIdx(Integer pmUserIdx) {
		this.pmUserIdx = pmUserIdx;
	}
	public String getPmUserName() {
		return pmUserName;
	}
	public void setPmUserName(String pmUserName) {
		this.pmUserName = pmUserName;
	}
	public Integer getPlUserIdx() {
		return plUserIdx;
	}
	public void setPlUserIdx(Integer plUserIdx) {
		this.plUserIdx = plUserIdx;
	}
	public String getPlUserName() {
		return plUserName;
	}
	public void setPlUserName(String plUserName) {
		this.plUserName = plUserName;
	}
	public Integer getClientIdx() {
		return clientIdx;
	}
	public void setClientIdx(Integer clientIdx) {
		this.clientIdx = clientIdx;
	}
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getWorkflow() {
		return workflow;
	}
	public void setWorkflow(String workflow) {
		this.workflow = workflow;
	}
	public String getworkflowName() {
		return workflowName;
	}
	public void setworkflowName(String workflowName) {
		this.workflowName = workflowName;
	}
	public String getPlanDateSt() {
		return planDateSt;
	}
	public void setPlanDateSt(String planDateSt) {
		this.planDateSt = planDateSt;
	}
	public String getPlanDateEd() {
		return planDateEd;
	}
	public void setPlanDateEd(String planDateEd) {
		this.planDateEd = planDateEd;
	}
	public Integer getContractAmount() {
		return contractAmount;
	}
	public void setContractAmount(Integer contractAmount) {
		this.contractAmount = contractAmount;
	}
	public Integer getWorkAmount() {
		return workAmount;
	}
	public void setWorkAmount(Integer workAmount) {
		this.workAmount = workAmount;
	}
	public Integer getWorkUserCount() {
		return workUserCount;
	}
	public void setWorkUserCount(Integer workUserCount) {
		this.workUserCount = workUserCount;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public String getSignificant() {
		return significant;
	}
	public void setSignificant(String significant) {
		this.significant = significant;
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
