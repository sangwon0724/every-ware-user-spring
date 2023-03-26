package com.solution.groupware.vo;

import org.apache.ibatis.type.Alias;

@Alias("UserVO")
public class UserVO {
	private int userIdx;

	public int getUserIdx() {
		return userIdx;
	}

	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	
	
}
