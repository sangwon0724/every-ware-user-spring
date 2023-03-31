package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("WorkFileVO")
public class WorkFileVO {
	private int idx;
	private int projectIdx;
	private int workIdx;
	private Integer workReplyIdx;
	private int userIdx;
	private String filePath;
	private String fileName;
	private int fileSize;
	private String fileType;
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
	public Integer getWorkReplyIdx() {
		return workReplyIdx;
	}
	public void setWorkReplyIdx(Integer workReplyIdx) {
		this.workReplyIdx = workReplyIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getTempId() {
		return tempId;
	}
	public void setTempId(String tempId) {
		this.tempId = tempId;
	}
}
