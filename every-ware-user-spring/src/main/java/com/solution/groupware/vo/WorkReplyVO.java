package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("WorkReplyVO")
public class WorkReplyVO {
	private int idx;
	private int projectIdx;
	private int workIdx;
	private int userIdx;
	private String userName;
	private String content;
	private String regDate;
	private String modDate;
	private String workflow;
	private Integer targetUserIdx;
	private String tempId;
	
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
	public int getWorkIdx() {
		return workIdx;
	}
	public void setWorkIdx(int workIdx) {
		this.workIdx = workIdx;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getWorkflow() {
		return workflow;
	}
	public void setWorkflow(String workflow) {
		this.workflow = workflow;
	}
	public Integer getTargetUserIdx() {
		return targetUserIdx;
	}
	public void setTargetUserIdx(Integer targetUserIdx) {
		this.targetUserIdx = targetUserIdx;
	}
	public String getTempId() {
		return tempId;
	}
	public void setTempId(String tempId) {
		this.tempId = tempId;
	}
}
