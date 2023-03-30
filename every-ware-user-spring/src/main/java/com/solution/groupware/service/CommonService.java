package com.solution.groupware.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solution.groupware.mapper.CommonMapper;
import com.solution.groupware.vo.CodeVO;
import com.solution.groupware.vo.DescVO;
import com.solution.groupware.vo.UserVO;

@Service
public class CommonService {
	@Autowired
	private CommonMapper commonMapper;
	
	//코드 목록 조회
	public List<CodeVO> selectCodeList(HashMap<String, Object> param) throws Exception {
		return commonMapper.selectCodeList(param);
	};
	
	//소속 목록 조회
	public List<DescVO> selectDeptList(HashMap<String, Object> param) throws Exception {
		return commonMapper.selectDeptList(param);
	};
	
	//회원 목록 조회
	public List<UserVO> selectUserList(HashMap<String, Object> param) throws Exception {
		return commonMapper.selectUserList(param);
	};
}
