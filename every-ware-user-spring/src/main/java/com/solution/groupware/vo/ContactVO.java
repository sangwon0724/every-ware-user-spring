package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("ContactVO")
public class ContactVO {
	private int contactIdx;
	private String title;
	private String content;
	private int writerUserIdx;
	private String writerUserName;
	private int readCount;
	private int sendCount;
	private String regDate;
	
	public int getContactIdx() {
		return contactIdx;
	}
	public void setContactIdx(int contactIdx) {
		this.contactIdx = contactIdx;
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
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getSendCount() {
		return sendCount;
	}
	public void setSendCount(int sendCount) {
		this.sendCount = sendCount;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
}
