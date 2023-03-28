package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.BoardVO;
import com.solution.groupware.vo.CategoryVO;

public interface BoardMapper {
	//select
	public List<CategoryVO> selectBoardCategory() throws Exception; //카테고리 목록 조회
	public List<BoardVO> selectBoardList(HashMap<String, Object> param) throws Exception; //게시글 목록 조회
	public BoardVO selectBoardDetail(HashMap<String, Object> param) throws Exception; //게시글 상세 조회
	
	//insert
	public void insertPost(BoardVO param) throws Exception; //게시글 추가
	
	//update
	public void addView(HashMap<String, Object> param) throws Exception; //조회수 증가
}
