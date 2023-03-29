package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("WorkVO")
public class WorkVO {
	private int idx;
	private int projectIdx;
	private String projectName;
	private String workflow;
	private String workflowName;
	private String title;
	private String content;
	private String workDateSt;
	private String workDateEd;
	private int userIdx;
	private String userName;
	private int targetUserIdx;
	private String targetUserName;
	private String regDate;
	private String modDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getProjectIdx() {
		return projectIdx;
	}
	public void setProjectIdx(int projectIdx) {
		this.projectIdx = projectIdx;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getWorkflow() {
		return workflow;
	}
	public void setWorkflow(String workflow) {
		this.workflow = workflow;
	}
	public String getWorkflowName() {
		return workflowName;
	}
	public void setWorkflowName(String workflowName) {
		this.workflowName = workflowName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWorkDateSt() {
		return workDateSt;
	}
	public void setWorkDateSt(String workDateSt) {
		this.workDateSt = workDateSt;
	}
	public String getWorkDateEd() {
		return workDateEd;
	}
	public void setWorkDateEd(String workDateEd) {
		this.workDateEd = workDateEd;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getTargetUserIdx() {
		return targetUserIdx;
	}
	public void setTargetUserIdx(int targetUserIdx) {
		this.targetUserIdx = targetUserIdx;
	}
	public String getTargetUserName() {
		return targetUserName;
	}
	public void setTargetUserName(String targetUserName) {
		this.targetUserName = targetUserName;
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
