package com.solution.groupware.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solution.groupware.mapper.BoardMapper;
import com.solution.groupware.vo.CategoryVO;

@Service
public class BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	//수신함 목록 조회
	public List<CategoryVO> selectBoardCategory() throws Exception {
		return boardMapper.selectBoardCategory();
	};
}
