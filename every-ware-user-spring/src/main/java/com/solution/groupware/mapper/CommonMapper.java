package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.CodeVO;

public interface CommonMapper {
	//select
	public List<CodeVO> selectCodeList(HashMap<String, Object> param) throws Exception; //코드 목록 조회
}
