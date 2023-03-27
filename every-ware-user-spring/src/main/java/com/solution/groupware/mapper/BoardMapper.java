package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.CategoryVO;

public interface BoardMapper {
	//select
	public List<CategoryVO> selectBoardCategory() throws Exception; //카테고리 목록 조회
}
