package com.solution.groupware.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.solution.groupware.mapper.BoardMapper;
import com.solution.groupware.vo.BoardVO;
import com.solution.groupware.vo.CategoryVO;

@Service
public class BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	//카테고리 목록 조회
	public List<CategoryVO> selectBoardCategory() throws Exception {
		return boardMapper.selectBoardCategory();
	};
	
	//게시글 목록 조회
	public List<BoardVO> selectBoardList(HashMap<String, Object> param) throws Exception {
		return boardMapper.selectBoardList(param);
	};
	
	//게시글 상세 조회
	public BoardVO selectBoardDetail(HashMap<String, Object> param) throws Exception {
		return boardMapper.selectBoardDetail(param);
	};
	
	//조회수 증가
	public void addView(HashMap<String, Object> param) throws Exception {
		boardMapper.addView(param);
	};
	
	//게시글 추가
	public void insertPost(BoardVO param) throws Exception {
		boardMapper.insertPost(param);
	};
}
