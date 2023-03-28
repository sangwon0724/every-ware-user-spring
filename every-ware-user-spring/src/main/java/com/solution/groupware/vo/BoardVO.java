package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("BoardVO")
public class BoardVO {
	private int idx;
	private int categoryIdx;
	private int userIdx;
	private int writerUserIdx;
	private String writerUserName;
	private String title;
	private String content;
	private int views;
	private String regDate;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getCategoryIdx() {
		return categoryIdx;
	}
	public void setCategoryIdx(int categoryIdx) {
		this.categoryIdx = categoryIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public int getWriterUserIdx() {
		return writerUserIdx;
	}
	public void setWriterUserIdx(int writerUserIdx) {
		this.writerUserIdx = writerUserIdx;
	}
	public String getWriterUserName() {
		return writerUserName;
	}
	public void setWriterUserName(String writerUserName) {
		this.writerUserName = writerUserName;
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
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
}
