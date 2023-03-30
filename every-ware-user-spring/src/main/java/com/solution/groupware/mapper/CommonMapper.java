package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.CodeVO;
import com.solution.groupware.vo.DescVO;
import com.solution.groupware.vo.UserVO;

public interface CommonMapper {
	//select
	public List<CodeVO> selectCodeList(HashMap<String, Object> param) throws Exception; //코드 목록 조회
	public List<DescVO> selectDeptList(HashMap<String, Object> param) throws Exception; //소속 목록 조회
	public List<UserVO> selectUserList(HashMap<String, Object> param) throws Exception; //회원 목록 조회
}
