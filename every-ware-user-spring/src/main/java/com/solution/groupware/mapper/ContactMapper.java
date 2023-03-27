package com.solution.groupware.mapper;

import java.util.HashMap;
import java.util.List;

import com.solution.groupware.vo.ContactVO;

public interface ContactMapper {
	//select
	public List<ContactVO> selectReceiveList(HashMap<String, Object> param) throws Exception; //수신함 목록 조회
	public List<ContactVO> selectSendList(HashMap<String, Object> param) throws Exception; //게시글 목록
	public List<ContactVO> selectAllList(HashMap<String, Object> param) throws Exception; //게시글 목록
	public List<ContactVO> selectTrashList(HashMap<String, Object> param) throws Exception; //게시글 목록
	
	//insert
	public void insertPost(HashMap<String, Object> param) throws Exception; //게시글 추가
	public void insertStatus(HashMap<String, Object> param) throws Exception; //상태값 추가
	
	//update
	public void updateReadStatus(HashMap<String, Object> param) throws Exception; //읽음 처리
}
